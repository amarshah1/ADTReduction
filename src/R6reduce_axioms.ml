(* Given a flat NNF formula where we already reduced the Rules in R4, we want to add in extra axioms saying:
    1. Each ADT term can only be satisfied by a single tester
    2. There are no ADT cycles*)


module PA = Smtlib_utils.V_2_6.Ast
open R1inline
open R2rewrite
open R3flatten
open R4normalize
open R5reduce_rules
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

let get_tester_axiom_term var_name (cstor_list : PA.cstor list) not_placement = 
  let rec aux var_name (cstor_list : PA.cstor list) not_placement acc = 
      begin match cstor_list with
        | cstor :: rest -> 
            if (not_placement = 1) then  (aux var_name rest (not_placement - 1) (acc @ [(PA.App (("is-" ^ cstor.cstor_name), [PA.Const var_name]))]))
            else (aux var_name rest (not_placement - 1) (acc @ [PA.Not (PA.App (("is-" ^ cstor.cstor_name), [PA.Const var_name]))]))
        | _ -> acc
      end in
  aux var_name (cstor_list : PA.cstor list) not_placement []

(*TODO: I am only currently doing this with constants, but I may need to do this with all constructors.contents
        Would be better if I didn't need to though. Discuss with Federico*)
let rec get_tester_and value cstor_list not_placement = 
  if (not_placement = 1) then [PA.And (get_tester_axiom_term value cstor_list not_placement)]
  else (PA.And (get_tester_axiom_term value cstor_list not_placement)) :: (get_tester_and value cstor_list (not_placement - 1))

let tester_with_constructor (value : string) (cstor_list : PA.cstor list) =
  let rec aux (value : string) (cstor_list : PA.cstor list) acc =
    begin match cstor_list with
      | cstor :: rest -> 
          if (cstor.cstor_args = []) then 
            let term = (PA.Stmt_assert (PA.Imply ((PA.App ("is-" ^ cstor.cstor_name, [PA.Const value])), (PA.Eq ((PA.Const value), (PA.Const cstor.cstor_name)))))) in
            (aux value rest (acc @ [term]))
          else (aux value rest acc)
      | _ -> acc
    end in
  aux value cstor_list []

let get_tester_axioms values (cstor_list : PA.cstor list) = 
  let rec aux values (cstor_list : PA.cstor list) acc = 
    begin match values with
      | value :: rest -> 
          let tester_cstor_axioms = (tester_with_constructor value cstor_list) in
          let axioms = [PA.Stmt_assert (PA.Or (get_tester_and value cstor_list (List.length cstor_list)))] @ tester_cstor_axioms in
          (aux rest cstor_list (acc @ axioms))
      | _ -> acc
    end in
  aux values cstor_list []

let generate_tester_axioms keys = 
  let rec aux keys acc = 
    begin match keys with
      | key :: rest -> 
          let values, _ = StrTbl.find Ctx.t.adt_with_variables key in
          let constructor_list = StrTbl.find Ctx.t.adts key in
          let tester_axioms = get_tester_axioms values constructor_list in
          (aux rest (acc @ tester_axioms))
      | _ -> acc
    end in
  aux keys []

(* Step 3: Use list of vars to implement acyclicality axiom*)


let generate_disequalities term (term_ty : PA.ty) parents =
  let rec aux term (term_ty : PA.ty) parents guards acc =
    begin match parents with 
      | ((parent_term, parent_ty), parent_tester) :: rest -> 
          let new_guards = ((PA.App (parent_tester, [parent_term])) :: guards) in
          if (parent_ty = term_ty) then
            (*TODO: here add the guarding. I think I can just do it by accumulating parents, but need to figure out which order the parents go in ...*)
             let stmt = (PA.Stmt_assert (PA.Imply ((PA.And new_guards), (PA.Not (PA.Eq (term, parent_term)))))) in
             (aux term term_ty rest new_guards (acc @ [stmt]))
          else 
            (aux term term_ty rest new_guards acc)
      | _ -> acc
    end in
  aux term term_ty parents [] []

(* this is currently dead code*)
(* let rec get_correct_acyclicality_terms_selectors term new_selection_depth selector_list add_to_parents parents disequalities =
  begin match selector_list with
    | (selector_name, selector_ty, cstor_name) :: rest ->
        begin match selector_ty with
          | PA.Ty_app (adt_name,_) ->
              begin match StrTbl.find_opt Ctx.t.adt_with_selectors adt_name with
                | Some new_selectors -> 
                      let acyclicality_axioms = (generate_acyclicality_axioms_val (PA.App (selector_name, [term])) selector_ty new_selection_depth new_selectors ((add_to_parents, "is-"^cstor_name) :: parents) disequalities) in
                      (get_correct_acyclicality_terms_selectors term new_selection_depth rest add_to_parents parents (disequalities @ acyclicality_axioms))
                | None -> get_correct_acyclicality_terms_selectors term new_selection_depth rest add_to_parents parents disequalities
              end
          | _ -> get_correct_acyclicality_terms_selectors term new_selection_depth rest add_to_parents parents disequalities
        end
    | _ -> disequalities
  end

and generate_acyclicality_axioms_val term (term_ty : PA.ty) selection_depth selector_list parents disequalities=
  if (selection_depth = 0) then disequalities
  else 
    let new_disequalities = (generate_disequalities term term_ty parents) in 
    (get_correct_acyclicality_terms_selectors term (selection_depth - 1) selector_list (term, term_ty) parents (disequalities @ new_disequalities)) *)
(* end dead code*)

(*Tentative code*)
(*TODO: this code seems to mostly work but debug more*)
let generate_acyclicality_axioms_term term term_ty new_selection_depth selector_list new_parents =
  let rec loop stack disequalities =
    (* if ((List.length stack) > 10) then (print_string ((string_of_int (List.length stack)) ^ "\n")); *)
    match stack with
    | [] -> disequalities
    | (term, term_ty, selection_depth, selector_list, parents) :: rest ->
        let new_disequalities = (generate_disequalities term term_ty parents) @ disequalities in
        if (selection_depth = 0) then (loop [@tailcall]) rest new_disequalities
        else
          begin match selector_list with
            | (selector_name, selector_ty, cstor_name) :: selectors' ->
                begin match selector_ty with
                  | PA.Ty_app (adt_name,_) ->
                      begin match StrTbl.find_opt Ctx.t.adt_with_selectors adt_name with
                        | Some new_selectors -> 
                            ((loop [@tailcall]) (((PA.App (selector_name, [term])), selector_ty, selection_depth - 1, new_selectors, ((term, term_ty), "is-"^cstor_name) :: parents) ::
                                  (term, term_ty, selection_depth, selectors', parents) :: rest) new_disequalities)
                        | None -> (loop [@tailcall]) ((term, term_ty, selection_depth, selectors', parents) :: rest) new_disequalities
                      end
                  | _ -> (loop [@tailcall]) ((term, term_ty, selection_depth, selectors', parents) :: rest) new_disequalities
                end
            | _ -> (loop [@tailcall]) rest new_disequalities
          end
  in
  loop [(term, term_ty, new_selection_depth, selector_list, new_parents)] []
(*End tentative code*)

let generate_acyclicality_axioms_adt terms_with_ty selection_depth (selector_list : (string * PA.ty * string) list) parents =
  let rec aux terms_with_ty selection_depth (selector_list : (string * PA.ty * string) list) parents = 
    (* if ((List.length Ctx.t.axioms) > 50000) then (print_string ((string_of_int (List.length Ctx.t.axioms)) ^ "\n")); *)
    begin match terms_with_ty with
      | value :: rest -> 
          let axioms = (generate_acyclicality_axioms_term(*_val*) (fst value) (snd value) selection_depth selector_list parents) in 
          Ctx.add_axioms axioms;
          (aux rest selection_depth selector_list parents)
      | _ -> ()
    end in
    aux terms_with_ty selection_depth selector_list parents

(* TODO: currently the way we apply selectors has no concern for typing but we should be concerned about it
   *)
let generate_selector_list (constructor_list : PA.cstor list) = 
  let rec aux constructor_list acc = 
    begin match (constructor_list : PA.cstor list) with
      | cstor :: rest -> (aux rest (acc @ (List.map (fun (x, y) -> (x, y, cstor.cstor_name)) cstor.cstor_args)))
      | _ -> acc
    end in
  aux constructor_list []

let rec create_selector_values keys =
  begin match keys with
    | key :: rest -> let thing = (generate_selector_list (StrTbl.find Ctx.t.adts key)) in
                     StrTbl.add Ctx.t.adt_with_selectors key thing;
                     create_selector_values rest
    | _ -> ()
  end

let generate_acyclicality_axioms keys = 
  Ctx.find_max_depths ();
  let rec aux keys = 
    (* if ((List.length acc) > 50000) then (print_string ((string_of_int (List.length acc)) ^ "\n")); *)
    begin match keys with
      | key :: rest ->
          let values, ty = StrTbl.find Ctx.t.adt_with_variables key in
          let values_len = Ctx.get_vertex_weight key(*List.length values*) in (*TODO: DONE JUST NEEDS TO TEST change selection depth for co-recursive ADTs*)
          let constructor_list = StrTbl.find Ctx.t.adts key in
          let selector_list = generate_selector_list constructor_list in
          let _ = create_selector_values (StrTbl.keys_list Ctx.t.adts) in
          let _ = generate_acyclicality_axioms_adt (List.map (fun x ->  ((PA.Const x), ty)) values) (values_len + 1) selector_list [] in
          (* print_string "PRINTING SUB ACYCLICALITY AXIOMS \n";
          stmt_printer acyclicality_axioms_val;
          print_string "END \n"; *)
          (* (print_string ((string_of_int (List.length Ctx.t.axioms)) ^ "\n")); *)
          (aux rest)
      | _ -> ()
    end in
    aux keys


(* Step 4: Add these extra axioms to the end of our query*)

(* TODO: we might have to add a special thing where we assert that (is-Nil Nil)*)
let reduce_axioms stmts = 
  get_adt_vars stmts;
  let keys = StrTbl.keys_list Ctx.t.adt_with_variables in
  (* let key_value_pairs = Hashtbl.map_list Ctx.t.adt_with_variables in *)
  let tester_axioms = generate_tester_axioms keys in
  let _ = generate_acyclicality_axioms keys in
  (* print_string "PRINTING ACYCLICALITY AXIOMS \n";
  stmt_printer acyclicality_axioms;
  print_string "END \n"; *)
  [PA.Stmt_set_logic "QF_UF"] @ stmts @ tester_axioms @ Ctx.t.axioms @ [PA.Stmt_check_sat]

let full_reduction stmts =
  let is = inline_statements stmts in
  (* print_string "inline done \n"; *)
  let rs = rewrite_statements is in
  (* print_string "rewrite done \n"; *)
  let fs = flatten_statements rs in 
  (* print_string "flatten done \n"; *)
  let ns = normalize_statements fs in 
  (* print_string "normalize done \n"; *)
  let rrs = reduce_rule_statements ns in 
  (* print_string "reduce_rule done \n"; *)
  (* let ras = reduce_axioms rrs in  *)
  (* print_string "reduce_axioms done \n"; *)
  (* print_string ((string_of_int (List.length ras)) ^ "\n"); *)

  rs
