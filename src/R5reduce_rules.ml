(* Given a formula in flattened NNF form, we want to perform our reduction*)
module PA = Smtlib_utils.V_2_6.Ast
open Context
exception UnsupportedQuery of string

let rec add_selectors adt_ty (cstor_args : (string * PA.ty) list) cstor = 
  let rec aux adt_ty (cstor_args : (string * PA.ty) list) cstor selector_number acc =
    begin match cstor_args with
      | (s, t) :: rest ->
          Ctx.add_selector s t cstor selector_number;
          let selector_decl =  PA.Stmt_decl {fun_ty_vars = []; fun_name = s; fun_args = [adt_ty]; fun_ret = t} in
          (aux adt_ty rest cstor (selector_number + 1) ([selector_decl] @  acc))
      | _ -> acc
    end in
  aux adt_ty cstor_args cstor 0 []
  

let rec add_cstors adt_ty (cstor_list: PA.cstor list) : PA.stmt list = 
  let rec aux adt_ty (cstor_list: PA.cstor list) acc : PA.stmt list  = 
    begin match cstor_list with
      | cstor :: rest ->
          Ctx.add_constructor cstor.cstor_name cstor;
          let cstor_decl = PA.Stmt_decl {fun_ty_vars = []; fun_name = cstor.cstor_name; fun_args = (List.map snd cstor.cstor_args); fun_ret = adt_ty} in
          Ctx.add_tester ("is-" ^ cstor.cstor_name) adt_ty cstor;
          let tester_decl = PA.Stmt_decl {fun_ty_vars = []; fun_name = "is-" ^ cstor.cstor_name; fun_args = [adt_ty]; fun_ret = PA.Ty_bool} in
          let testers_satisfy_constant =
              if (cstor.cstor_args = []) then [PA.Stmt_assert (PA.App ("is-" ^ cstor.cstor_name, [PA.Const cstor.cstor_name]))] 
              else []
            in
          let testers_selectors_decl = add_selectors adt_ty cstor.cstor_args cstor in
          (aux adt_ty rest (acc @ [cstor_decl; tester_decl] @ testers_selectors_decl @ testers_satisfy_constant))
      | _ -> acc
    end in
    aux adt_ty cstor_list []




(*this function will add an adt list to context, but will also return a list that replaces the adt declaration *) 
(*TODO: modify this so that it stores whether a datatype is mutually recursive*)
let rec add_adt_list_to_context (adt_list: ((string * int) * PA.cstor list) list) = 
  let rec add_adt_list_to_context_helper adt_list sort_decls fun_decls = 
    begin match adt_list with
      | ((s, _), cstor_list) :: rest -> 
          Ctx.add_adt s cstor_list; 
          let adt_decl_sort = [PA.Stmt_decl_sort (s, 0)] in
          let cstor_statements = add_cstors (PA.Ty_app (s, [])) cstor_list in
          (add_adt_list_to_context_helper rest (sort_decls @ adt_decl_sort) (fun_decls @ cstor_statements))
      | _ -> (sort_decls, fun_decls)
    end in
  Ctx.check_mutually_recursive adt_list; (* this is the stuff necessary for mutual recursion*)
  let sort_decls, fun_decls = add_adt_list_to_context_helper adt_list [] [] in 
    sort_decls, fun_decls

(*Consolidate this into reduce statements*)
(* let rec store_adts (statements: PA.stmt list) = 
  begin match statements with
    | stmt :: rest ->
      begin match stmt with
        | Stmt_data data -> add_adt_list_to_context data; store_adts rest
        | _ -> store_adts rest
      end
    | _ -> ()
  end *)

  let rec create_contrived_vars_for_selectors (slctor_list : (string * PA.ty) list) =
    let rec aux slctor_list acc = 
      begin match slctor_list with
        | (_, typ) :: rest ->     
          let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
          Ctx.increment_vars_created ();
          Ctx.add_adt_var var_name typ;
          (aux rest (acc @ [PA.Const var_name]))
        | _ -> acc
      end in
    aux slctor_list []


let create_reduced_assert_eq name terms eq_term : PA.term = 
  begin match StrTbl.find_opt Ctx.t.constructors name with
    | Some cstor -> 
        (PA.And ([(PA.Eq (PA.App (name, terms), eq_term)); 
                  (PA.App (("is-" ^ name), [eq_term]))]
                  (*PA.Imply ((PA.App (("is-" ^ name), [eq_term])), *)
                          @ (List.map2 (fun x y -> PA.Eq (PA.App ((fst x), [eq_term]), y)) cstor.cstor_args terms)))
    | None ->
      begin match StrTbl.find_opt Ctx.t.selectors name with
        | Some (_, cstor, _) -> 
            let input_vars = create_contrived_vars_for_selectors cstor.cstor_args in (*mathcing f^j(t) = t_j*)
            PA.And ([PA.Eq (App (name, terms), eq_term);  (*f^j(t) = t_j*)
            (*PA.App (("is-" ^ cstor.cstor_name), terms); (*is-f(t)*)*) (*NOTE: I think we actually don't want this rule because 
                                                                                just because a selector is being applied to a var
                                                                                  doesn't mean that it is being correctly applied*)
            PA.Eq (PA.App (cstor.cstor_name, input_vars), List.hd terms); (* f(cv_1, ..., cv_k) = t*)
            PA.Imply (PA.App (("is-" ^ cstor.cstor_name), terms), 
                        (PA.And (List.map2 (fun x y -> PA.Eq (PA.App ((fst x), [List.hd terms]), y)) cstor.cstor_args input_vars)))])(*Ʌ_k f^k(t) = cv_k*)
        | None -> PA.Eq (App (name, terms), eq_term)
      end
  end

  let create_reduced_assert_app name term : PA.term = 
    begin match StrTbl.find_opt Ctx.t.testers name with
      | Some (_, cstor) -> 
          let input_vars = create_contrived_vars_for_selectors cstor.cstor_args in (*mathcing is-f(t)*)
          let constructor_term = (*little annoying, but we have to do it in cases in case the constructor is just a constant*)
            match input_vars with
              | [] -> PA.Const cstor.cstor_name
              | _ -> PA.App (cstor.cstor_name, input_vars)
          in
          PA.And ([PA.App (name, term);  (*is-f(t)*)
          PA.Eq (constructor_term, List.hd term)] (* f(cv_1, ..., cv_k) = t*)
          @ (List.map2 (fun x y -> PA.Eq (PA.App ((fst x), term), y)) cstor.cstor_args input_vars)) (*Ʌ_k f^k(t) = cv_k*)
      | None -> PA.App (name, term)
    end


let rec reduce_asserts (t : PA.term) = 
  begin match t with
  (*TODO: We are trying to make tester applications into a Axiom instead of Rule C. May have to go back if it does not work *)
  | App (_,_)  -> t (*App (s, terms) -> create_reduced_assert_app s terms*)
  | Eq (term1, term2) -> 
    begin match term1 with 
      | App (s, terms) -> (create_reduced_assert_eq s terms term2)
      | _ -> begin match term2 with
                | App (s, terms) -> (create_reduced_assert_eq s terms term1)
                | _ -> t
              end
    end
  (* | Is_a of string * term (*tester: is-constructor(term) *) NOTE: we are treating testers just as any other uninterpreted function although there are the Is_a type: we are not using these *)
  | And terms -> And (List.map reduce_asserts terms)
  | Or terms -> Or (List.map reduce_asserts terms)
  | Not _ -> t
  | _ -> t
  end

let reduce_statements (statements: PA.stmt list) = 
  let rec reduce_statements_helper statements sort_decl variable_decl asserts = 
    begin match statements with
      | stmt :: rest ->
          begin match stmt with
          | PA.Stmt_data data -> let reduced_adt_decl_sorts, reduced_adt_decl_funs = (add_adt_list_to_context data) in
                              (reduce_statements_helper rest (sort_decl @ reduced_adt_decl_sorts @ reduced_adt_decl_funs) variable_decl asserts)
          | Stmt_assert t -> reduce_statements_helper rest sort_decl variable_decl (asserts @ [PA.Stmt_assert (reduce_asserts t)])
          | Stmt_check_sat -> reduce_statements_helper rest sort_decl variable_decl (asserts)
          | Stmt_set_logic _ -> reduce_statements_helper rest sort_decl variable_decl (asserts)
          | Stmt_set_info _ -> reduce_statements_helper rest sort_decl variable_decl (asserts)
          | Stmt_exit -> reduce_statements_helper rest sort_decl variable_decl (asserts)
          | _ -> reduce_statements_helper rest (sort_decl @ [stmt]) variable_decl (asserts)
          end
      | _ -> sort_decl, variable_decl, asserts
    end
  in
  reduce_statements_helper statements [] [] []

(*TODO: add the declaration of the con*)
let create_reduction_rule_declares (keys: string list) =
  let rec aux keys acc =
    begin match keys with
      | key :: rest ->
        let key_type = Ctx.lookup_adt_var key in
        (aux rest (acc @ [PA.Stmt_decl {fun_ty_vars = []; fun_name = key; fun_args = []; fun_ret =  key_type}]))
        (* if we wanted to do it as a smt_fun_def instead: PA.Stmt_fun_def  {PA.fr_decl={PA.fun_ty_vars=[]; fun_args=[]; fun_name = key; fun_ret=key_type}*)
      | _ -> acc
    end in
  aux keys []

let reduce_rule_statements (stmts: PA.stmt list) =
  (* add_adt_list_to_context stmts; *)
  let sort_decl, variable_decl, asserts = reduce_statements stmts in
  sort_decl @ create_reduction_rule_declares (StrTbl.keys_list Ctx.t.adt_vars) @ variable_decl @ asserts 


