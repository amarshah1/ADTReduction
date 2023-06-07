(* Given a formula in flattened NNF form, we want to perform our reduction*)
module PA = Smtlib_utils.V_2_6.Ast
open Containers
open R1inline
exception UnsupportedQuery of string

module StrTbl = CCHashtbl.Make(CCString)

module Ctx = struct
  type t = {
    mutable function_definition: PA.ty StrTbl.t;
    mutable new_statements: (PA.ty * PA.term) StrTbl.t; (*For new statements that we want to add of form: *variable* = (expression)*)
    mutable general_statements: (PA.ty * PA.stmt) StrTbl.t; (*for all other new statements taht we want to make*)
    mutable adts:  (PA.cstor list) StrTbl.t; (*the idea is that when you declare a new adt sort you should store its constructors/selectors here*)
    mutable adt_vars: PA.ty StrTbl.t;
    mutable constructors: PA.cstor StrTbl.t;
    mutable selectors: (PA.ty * PA.cstor) StrTbl.t;
    mutable testers: (PA.ty * PA.cstor) StrTbl.t;
    mutable adt_with_variables: ((string list) * PA.ty) StrTbl.t; (*way to look up adt and get a list of variables. used in R5*)
    mutable adt_with_selectors: (string * PA.ty) list StrTbl.t; (* way to look up the different selectors in R%*)
    mutable vars_created: int;
  }

  let t : t = {
    function_definition=StrTbl.create 64;
    new_statements=StrTbl.create 64;
    general_statements=StrTbl.create 64;
    adts = StrTbl.create 64;
    adt_vars = StrTbl.create 64;
    constructors=StrTbl.create 64;
    selectors=StrTbl.create 64;
    testers = StrTbl.create 64;
    adt_with_variables = StrTbl.create 64;
    adt_with_selectors = StrTbl.create 64;
    vars_created = 0;
  }

  let add_fun_def name var_type : unit = StrTbl.add t.function_definition name var_type

  let lookup_fun_def name  : PA.ty = StrTbl.find t.function_definition name 

  let add_new_statement name var_type term : unit = StrTbl.add t.new_statements name (var_type, term)
  let lookup_new_statement name = StrTbl.find t.new_statements name
  
  let add_general_statement name var_type statement : unit = StrTbl.add t.general_statements name (var_type, statement)
  let lookup_general_statement name = StrTbl.find t.general_statements name

  let add_adt name cstor_list = StrTbl.add t.adts name cstor_list

  let add_constructor name cstor = StrTbl.add t.constructors name cstor
  let add_selector name ty cstor = StrTbl.add t.selectors name (ty, cstor)
  let add_tester name ty cstor = StrTbl.add t.testers name (ty, cstor)

  let add_adt_var name typ = StrTbl.add t.adt_vars name typ
  let lookup_adt_var name = begin match StrTbl.find_opt t.adt_vars name with
                              | Some value -> value
                              | None -> print_string ("\n Not_found" ^ name ^ "\n"); PA.Ty_bool
                            end

  let add_variable_to_adt name variable ty =
    begin match StrTbl.find_opt t.adt_with_variables name with
      | Some var_list -> StrTbl.replace t.adt_with_variables name ((variable :: (fst var_list)), ty)
      | None -> StrTbl.add t.adt_with_variables name ([variable], ty)
    end

  let increment_vars_created () : unit = 
      t.vars_created <- t.vars_created + 1
end

let reset_ctx () = 
  Ctx.t.function_definition <- StrTbl.create 64;
  Ctx.t.new_statements <- StrTbl.create 64;
  Ctx.t.general_statements <- StrTbl.create 64;
  Ctx.t.adts <- StrTbl.create 64;
  Ctx.t.adt_vars <- StrTbl.create 64;
  Ctx.t.constructors <- StrTbl.create 64;
  Ctx.t.selectors <- StrTbl.create 64;
  Ctx.t.testers <- StrTbl.create 64;
  Ctx.t.adt_with_variables <- StrTbl.create 64;
  Ctx.t.adt_with_selectors <- StrTbl.create 64;
  Ctx.t.vars_created <- 0;
;;

let get_match_term (match_term : PA.match_branch) = 
  begin match match_term with
  | Match_default t -> t
  | Match_case (_, _, t) -> t
end

(* here is a function that will tell you the type of a term. Not sure if there is a faster way to do this*)
(* also *)
let rec get_type (term: PA.term) : PA.ty = 
  begin match term with
    | True -> PA.Ty_bool
    | False -> PA.Ty_bool
    | Const v -> (Ctx.lookup_fun_def v) (*TODO*)
    | Arith (op, _) -> 
        begin match op with
        | Leq -> PA.Ty_bool
        | Lt -> PA.Ty_bool
        | Geq -> PA.Ty_bool
        | Gt -> PA.Ty_bool
        | Add -> PA.Ty_real
        | Minus -> PA.Ty_real
        | Mult -> PA.Ty_real
        | Div -> PA.Ty_real
        end
    | App (s, _) -> Ctx.lookup_fun_def s (*PA.Ty_app (s, (List.map (fun x -> get_type x) terms))*) (*TODO*)
    | HO_app (_,_) -> PA.Ty_bool(*raise (UnsupportedQuery "We do not support HO_App")*)
    | Match (_, branches) -> get_type (get_match_term (List.hd branches))
    | If (_, t2, _) -> get_type t2
    | Is_a (_, _) -> PA.Ty_bool
    | Fun (_, t) -> get_type t
    | Eq (_, _) -> PA.Ty_bool
    | Imply (_, _) -> PA.Ty_bool
    | And _ -> PA.Ty_bool
    | Or _ -> PA.Ty_bool
    | Not _ -> PA.Ty_bool
    | Distinct _ -> PA.Ty_bool
    | Cast (_, ty) -> ty
    | Forall (_, _) -> raise (UnsupportedQuery "We do not support Forall")
    | Exists (_, _) -> raise (UnsupportedQuery "We do not support Exists")
    | Attr (t, _) -> get_type t
    | _ -> PA.ty_bool
  end


  (* General Helper Functions *)

  (* will tell you if two PA.ty are equal*)

    (*I think this is not necessary since we can ue the built in equaity*)
  (* let ty_equal (ty1 : PA.ty) (ty2 : PA.ty) : bool = 
    begin match ty1 with
      | Ty_bool ->
          begin match ty2 with
            | Ty_bool -> true
            | _ -> false
          end
      | Ty_real ->
          begin match ty2 with
            | Ty_real -> true
            | _ -> false
          end
      | Ty_app of ty_var * ty list
      | Ty_arrow of ty list * ty *)