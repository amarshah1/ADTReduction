(* Given a formula in flattened NNF form, we want to perform our reduction*)
module PA = Smtlib_utils.V_2_6.Ast
open Containers
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
    mutable selectors: (PA.ty * PA.cstor * int) StrTbl.t;
    mutable testers: (PA.ty * PA.cstor) StrTbl.t;
    mutable adt_with_variables: ((string list) * PA.ty) StrTbl.t; (*way to look up adt and get a list of variables. used in R5*)
    mutable adt_with_selectors: (string (*selector name*) * PA.ty (*selector type*) * string (*cstor name*)) list StrTbl.t; (* way to look up the different selectors in Reduction%*)
    mutable mutually_recursive_datatypes: (bool * (string list) * int) StrTbl.t; (*boolean: will tell if a datatype is mutually recursive
                                                                                        list: contains a list of datatypes it references int:  max_depth*)
    mutable axioms: PA.stmt List.t;
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
    mutually_recursive_datatypes = StrTbl.create 64;
    axioms = [];
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
  let add_selector name ty cstor selector_number = StrTbl.add t.selectors name (ty, cstor, selector_number)
  let add_tester name ty cstor = StrTbl.add t.testers name (ty, cstor)

  let add_adt_var name typ = StrTbl.add t.adt_vars name typ
  let lookup_adt_var name = begin match StrTbl.find_opt t.adt_vars name with
                              | Some value -> value
                              | None -> PA.Ty_bool
                            end

  let add_variable_to_adt name variable ty =
    begin match StrTbl.find_opt t.adt_with_variables name with
      | Some var_list -> StrTbl.replace t.adt_with_variables name ((variable :: (fst var_list)), ty)
      | None -> StrTbl.add t.adt_with_variables name ([variable], ty)
    end

  (*This should be used when reading in the *)
  let check_mutually_recursive (adt_list: ((string * int) * PA.cstor list) list) =
    let rec cmr_helper_helper_helper (adt_name :string) (cstor_args : PA.ty list) adt_names = 
      begin match cstor_args with
        | ty :: rest ->
          begin match ty with 
            | PA.Ty_app (cstor_name, _) ->
                      if (String.equal cstor_name adt_name) then (cmr_helper_helper_helper adt_name rest adt_names)
                      else (if (List.mem cstor_name adt_names) then 
                              ((match (StrTbl.find_opt t.mutually_recursive_datatypes adt_name) with
                                | Some (_, mutual_list, n) -> StrTbl.replace t.mutually_recursive_datatypes adt_name (true, (cstor_name :: mutual_list), n)
                                | None ->  StrTbl.add t.mutually_recursive_datatypes adt_name (true, [cstor_name], 0)
                              );
                              (cmr_helper_helper_helper adt_name rest adt_names))
                          else (cmr_helper_helper_helper adt_name rest adt_names))
            | _ -> (cmr_helper_helper_helper adt_name rest adt_names)
          end
        | _ -> ()
      end in

    let rec cmr_helper_helper (adt_name :string) (cstor_list : PA.cstor list) adt_names = 
      begin match cstor_list with
        | cstor :: rest ->
            let arg_names = (List.map snd cstor.cstor_args) in
            cmr_helper_helper_helper adt_name arg_names adt_names;
            cmr_helper_helper adt_name rest adt_names
        | [] -> ()
      end
    in

    let rec cmr_helper (adt_list: ((string * int) * PA.cstor list) list) adt_names =
      begin match adt_list with
        | ((adt_name, _), cstor_list) :: rest ->
          cmr_helper_helper adt_name cstor_list adt_names;
          cmr_helper rest adt_names
        | _ -> ()
      end in

    let rec initialize_adts adt_names = 
      begin match adt_names with
        | adt_name :: rest ->  
            StrTbl.add t.mutually_recursive_datatypes adt_name (false, [], 0);
            initialize_adts rest
        | [] -> ()
      end in
    
    let adt_names = (List.map (fun x -> fst (fst x)) adt_list) in 
    initialize_adts adt_names;
    cmr_helper adt_list adt_names



  let update_vertex_weight vertex weight = 
    match (StrTbl.find_opt t.mutually_recursive_datatypes vertex) with 
      | Some (b, l, old_weight) -> StrTbl.replace t.mutually_recursive_datatypes vertex (b, l, (max old_weight weight))
      | None -> ()
  
  let get_vertex_weight vertex = 
    match (StrTbl.find_opt t.mutually_recursive_datatypes vertex) with 
      | Some (_, _, weight) -> weight
      | None -> 0

    
  (* given this list of mutually recursive datatypes, we will generate new depths*)
  let rec dfs (vertex : string) visited in_stack stack = 
      (* Mark the current node as visited and add it to the current path (stack) *)
      Hashtbl.replace visited vertex true;
      Stack.push vertex stack;
      Hashtbl.add in_stack vertex 0;

      let mut_recursive, adjacents = 
        begin match (StrTbl.find_opt t.mutually_recursive_datatypes vertex) with
          | Some (mut_recursive, adj, _) -> (mut_recursive, adj)
          | None -> (false, [])
        end in 
            
      if mut_recursive then 
            (* Recur for all the vertices adjacent to this vertex *)
            List.iter (fun adjacent ->
              if (not (Hashtbl.mem visited adjacent)) then
                dfs adjacent visited in_stack stack
              else (if (Hashtbl.mem in_stack adjacent) then
                (* If an adjacent vertex is visited and is part of the current path, then we found a cycle. 
                  We can then calculate the cycle weight and update the max_cycle_weight for each vertex in the cycle *)
                let rec update_cycle_weights stack weight =
                    match Stack.top stack with
                    | vertex ->
                      if (not (String.equal vertex adjacent)) then 
                        begin
                        let removed = (Stack.pop stack) in
                        let new_weight = (update_cycle_weights stack (weight + (get_vertex_weight vertex))) in
                        update_vertex_weight vertex new_weight;
                        (Stack.push removed stack);
                        new_weight
                        end
                      else 
                        let new_weight = weight + (get_vertex_weight vertex) in
                        update_vertex_weight vertex new_weight;
                        new_weight
                in
                ignore (update_cycle_weights (Stack.copy stack) 0)))
            adjacents;
      
    (* Remove the vertex from the current path *)
    let removed = Stack.pop stack in 
    Hashtbl.remove in_stack removed;
    ()
  
  let find_max_depths () =
    let visited = Hashtbl.create 10 in
    let in_stack = Hashtbl.create 10 in
    let stack = Stack.create () in
    let vertices = StrTbl.keys_list t.mutually_recursive_datatypes in
    List.iter (fun vertex ->
      let values, _ =  StrTbl.find t.adt_with_variables vertex in
      begin match StrTbl.find_opt t.mutually_recursive_datatypes vertex with
        | Some (b, l, _) -> 
            StrTbl.replace t.mutually_recursive_datatypes vertex (b, l, (List.length values))
        | None -> ()
      end
    ) vertices;
    List.iter (fun vertex ->
      if not (Hashtbl.mem visited vertex) then
        dfs vertex visited in_stack stack 
    ) vertices
  
  (* Print the max_cycle_weight for each vertex in the graph *)
  let print_max_cycle_weights () =
    let vertices = StrTbl.keys_list t.mutually_recursive_datatypes in
    List.iter (fun (vertex : string) ->
      Printf.printf "Vertex %s: max_cycle_weight = %d\n" vertex (get_vertex_weight vertex)
    ) vertices
    
  let add_axioms new_axioms = 
    (* Stack.push new_axiom t.axioms *)
    t.axioms <- t.axioms @ new_axioms
    (* let rec aux acc = 
      begin match acc with
        | axiom :: rest ->
            Stack.push t.axioms axiom;
            aux rest
        | [] -> ()
      end in 
    aux new_axioms *)

    

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

let statement_to_stmt (s: PA.statement) = s.PA.stmt

(*Goes from PA.stmt to PA.statement with the location being None*)
let stmt_to_statement (s: PA.stmt) : PA.statement = {PA.stmt = s; loc = None}

let stmt_to_statements (stmts : PA.stmt list) : PA.statement list = 
  let rec aux stmts acc = 
    begin match stmts with
      | stmt :: rest -> aux rest (acc @ [{PA.stmt = stmt; loc = None}])
      | _ -> acc
    end in 
  aux stmts []

let statement_printer lst = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) lst

let stmt_printer lst =  statement_printer (List.map stmt_to_statement lst)

let ty_printer ty = PA.pp_ty Format.std_formatter ty

let alt_ty_printer ty =  match ty with
  | PA.Ty_bool -> print_string "Bool"
  | Ty_real -> print_string "Real"
  | Ty_app (s,[]) -> print_string s
  | _ -> print_string "other"

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