(* Given a flat NNF formula where we already reduced the Rules in R4, we want to add in extra axioms saying:
    1. Each ADT term can only be satisfied by a single tester
    2. There are no ADT cycles*)


module PA = Smtlib_utils.V_2_6.Ast
open R1inline
open R2flatten
open R3normalize
open R4reduce_rules
open Context
exception UnsupportedQuery of string

(*Step 1: go through the entire query and tally the variables that are ADTs*)

let rec get_adt_vars stmts = 
  begin match stmts with
    | stmt :: rest -> 
        begin match stmt with
          | PA.Stmt_decl fun_decl ->
              begin match fun_decl.fun_args with
                | [] -> begin match fun_decl.fun_ret with
                          | Ty_app (name, []) ->
                              begin match StrTbl.find_opt Ctx.t.adts name with 
                                | Some _ -> Ctx.add_variable_to_adt name fun_decl.fun_name fun_decl.fun_ret; 
                                            get_adt_vars rest
                                | None -> get_adt_vars rest
                              end
                          | _ -> get_adt_vars rest
                        end
                | _ -> get_adt_vars rest
              end
          | _ -> get_adt_vars rest
        end
    | _ -> ()
  end

(* Step 2: Use list of vars to implement tester axiom*)

let rec get_tester_axiom_term var_name (cstor_list : PA.cstor list) not_placement = 
  begin match cstor_list with
    | cstor :: rest -> 
        if (not_placement = 1) then (PA.App (("is-" ^ cstor.cstor_name), [PA.Const var_name])) :: (get_tester_axiom_term var_name rest (not_placement - 1))
        else PA.Not (PA.App (("is-" ^ cstor.cstor_name), [PA.Const var_name])) :: (get_tester_axiom_term var_name rest (not_placement - 1))
    | _ -> []
end

(*TODO: I am only currently doing this with constants, but I may need to do this with all constructors.contents
        Would be better if I didn't need to though. Discuss with Federico*)
let rec get_tester_and value cstor_list not_placement = 
  if (not_placement = 1) then [PA.And (get_tester_axiom_term value cstor_list not_placement)]
  else (PA.And (get_tester_axiom_term value cstor_list not_placement)) :: (get_tester_and value cstor_list (not_placement - 1))

let rec tester_with_constructor (value : string) (cstor_list : PA.cstor list) =
  begin match cstor_list with
    | cstor :: rest -> 
        if (cstor.cstor_args = []) then (PA.Stmt_assert (PA.Imply ((PA.App ("is-" ^ cstor.cstor_name, [PA.Const value])), (PA.Eq ((PA.Const value), (PA.Const cstor.cstor_name)))))) :: (tester_with_constructor value rest)
        else (tester_with_constructor value rest)
    | _ -> []
  end

let rec get_tester_axioms values (cstor_list : PA.cstor list) = 
  begin match values with
    | value :: rest -> 
        [PA.Stmt_assert (PA.Or (get_tester_and value cstor_list (List.length cstor_list)))]
        @ (tester_with_constructor value cstor_list) 
        @ (get_tester_axioms rest cstor_list)
    | _ -> []
  end

let rec generate_tester_axioms keys = 
  begin match keys with
    | key :: rest -> 
        let values, _ = StrTbl.find Ctx.t.adt_with_variables key in
        let constructor_list = StrTbl.find Ctx.t.adts key in
        let tester_axioms = get_tester_axioms values constructor_list in
        tester_axioms @ (generate_tester_axioms rest)
    | _ -> []
  end

(* Step 3: Use list of vars to implement acyclicality axiom*)


let rec generate_disequalities term (term_ty : PA.ty) parents =
  (* let rec generate_disequalities_helper term (term_ty :PA.ty) selector parents = *)
    begin match parents with 
      | parent :: rest -> 
          if ((snd parent) = term_ty) then
             let stmt = PA.Stmt_assert (PA.Not (PA.Eq (term, (fst parent)))) in
             stmt :: (generate_disequalities term term_ty rest)
          else 
            (generate_disequalities term term_ty rest)
      | _ -> []
    (* end in *)
  (* begin match selector_list with
    | selector :: rest ->
        let disequalities = generate_disequalities_helper term term_ty selector parents in
        disequalities @ (generate_disequalities term term_ty rest parents)
    | _ -> [] *)
  end

let rec get_correct_acyclicality_terms_selectors term new_selection_depth selector_list new_parents =
  begin match selector_list with
    | selector :: rest ->
        begin match (snd selector) with
          | PA.Ty_app (adt_name,_) ->
              begin match StrTbl.find_opt Ctx.t.adt_with_selectors adt_name with
                | Some new_selectors -> (generate_acyclicality_axioms_val (PA.App (fst selector, [term])) (snd selector) new_selection_depth new_selectors new_parents)
                                        @ (get_correct_acyclicality_terms_selectors term new_selection_depth rest new_parents)
                | None -> get_correct_acyclicality_terms_selectors term new_selection_depth rest new_parents
              end
          | _ -> get_correct_acyclicality_terms_selectors term new_selection_depth rest new_parents
        end
    | _ -> []
  end

and generate_acyclicality_axioms_val term (term_ty : PA.ty) selection_depth selector_list parents =
  if (selection_depth = 0) then []
  else (generate_disequalities term term_ty parents) @ 
       (get_correct_acyclicality_terms_selectors term (selection_depth - 1) selector_list ((term, term_ty) :: parents))
       (* (generate_acyclicality_axioms_adt (List.map (fun x -> (PA.App (fst x, [term]), (snd x))) selector_list) (selection_depth-1) selector_list ((term, term_ty) :: parents)) *)

and generate_acyclicality_axioms_adt terms_with_ty selection_depth (selector_list : (string * PA.ty) list) parents =
  begin match terms_with_ty with
    | value :: rest -> (generate_acyclicality_axioms_val (fst value) (snd value) selection_depth selector_list parents) @ (generate_acyclicality_axioms_adt rest selection_depth selector_list parents)
    | _ -> []
  end

(* TODO: currently the way we apply selectors has no concern for typing but we should be concerned about it
   *)
let rec generate_selector_list (constructor_list : PA.cstor list) = 
  begin match constructor_list with
    | cstor :: rest -> cstor.cstor_args @ (generate_selector_list rest)
    | _ -> []
  end

let rec create_selector_values keys =
  begin match keys with
    | key :: rest -> let thing = (generate_selector_list (StrTbl.find Ctx.t.adts key)) in
                     StrTbl.add Ctx.t.adt_with_selectors key thing;
                     create_selector_values rest
    | _ -> ()
  end

let rec generate_acyclicality_axioms keys = 
  begin match keys with
    | key :: rest ->
        let values, ty = StrTbl.find Ctx.t.adt_with_variables key in
        let values_len = List.length values in (*TODO: change selection depth for co-recursive ADTs*)
        let constructor_list = StrTbl.find Ctx.t.adts key in
        let selector_list = generate_selector_list constructor_list in
        let _ = create_selector_values (StrTbl.keys_list Ctx.t.adts) in
        let acyclicality_axioms_val = generate_acyclicality_axioms_adt (List.map (fun x ->  ((PA.Const x), ty)) values) (values_len + 1) selector_list [] in
        acyclicality_axioms_val @ (generate_acyclicality_axioms rest)
    | _ -> []
  end


(* Step 4: Add these extra axioms to the end of our query*)

(* TODO: we might have to add a special thing where we assert that (is-Nil Nil)*)
let reduce_axioms stmts = 
  get_adt_vars stmts;
  let keys = StrTbl.keys_list Ctx.t.adt_with_variables in
  (* let key_value_pairs = Hashtbl.map_list Ctx.t.adt_with_variables in *)
  let tester_axioms = generate_tester_axioms keys in
  let acyclicality_axioms = generate_acyclicality_axioms keys in
  [PA.Stmt_set_logic "QF_UF"] @ stmts @ tester_axioms @ acyclicality_axioms @ [PA.Stmt_check_sat]

let full_reduction stmts =
  let is = inline_statements stmts in
  (* print_string "inline done \n"; *)
  let fs = flatten_statements is in 
  (* print_string "flatten done \n"; *)
  let ns = normalize_statements fs in 
  (* print_string "normalize done \n"; *)
  let rrs = reduce_rule_statements ns in 
  (* print_string "reduce_rule done \n"; *)
  let ras = reduce_axioms rrs in 
  (* print_string "reduce_axioms done \n"; *)

  ras
