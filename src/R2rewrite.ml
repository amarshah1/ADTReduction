(* Rewrite: We will rewrite queries selector-constructor or tester-constructor applications back to back *)

module PA = Smtlib_utils.V_2_6.Ast
open Context
open R5reduce_rules
exception UnsupportedQuery of string

let rec rewrite_term (t: PA.term) : (PA.term * bool) = 
  begin match t with
    | PA.App (f, terms) -> 
        begin match StrTbl.find_opt Ctx.t.selectors f with
          | Some (_, cstor, selector_number) -> 
            begin match terms with
              | [PA.App(inner_f, inner_terms)] ->
                  if (cstor.cstor_name = inner_f) then ((fst (rewrite_term (List.nth inner_terms selector_number))), true)
                  else 
                    let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
                    (PA.App (f, new_terms), continue)
              | _ -> let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
                      (PA.App (f, new_terms), continue)
            end
          | None ->
            begin match StrTbl.find_opt Ctx.t.testers f with
            | Some (_, cstor) ->
              begin match (List.nth terms 0) with
                | PA.Const inner_f ->
                  if (cstor.cstor_name = inner_f) then (PA.True, false)
                  else 
                    (begin match StrTbl.find_opt Ctx.t.constructors inner_f with
                      | Some _ -> (PA.False, false) (*TODO: check if the type of the constructor matches the type of the tester, if not throw an erro*)
                      | None -> let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
                                (PA.App (f, new_terms), continue)
                    end)
                | PA.App(inner_f, _) ->
                    if (cstor.cstor_name = inner_f) then (PA.True, false)
                    else 
                      (begin match StrTbl.find_opt Ctx.t.constructors inner_f with
                        | Some _ -> (PA.False, false) (*TODO: check if the type of the constructor matches the type of the tester, if not throw an erro*)
                        | None -> let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
                                  (PA.App (f, new_terms), continue)
                      end)
                | _ -> let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
                       (PA.App (f, new_terms), continue)
              end
            | None -> let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
                      (PA.App (f, new_terms), continue)
            end
        end
    | Is_a (name, t) -> rewrite_term (PA.App ("is-" ^ name, [t])) (* turning selectors into unintepreted functions; Originally done in R4 normalize, but I added it here because necessary*)
    | Arith (op, terms) ->
        let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
        (PA.Arith (op, new_terms), continue)
    | Match (_, _) -> t, false (*TODO: Add support for match statements*)
    | If(a, b, c) ->
        let a_term, a_continue = rewrite_term a in 
        let b_term, b_continue = rewrite_term b in 
        let c_term, c_continue = rewrite_term c in 
        (If (a_term, b_term, c_term)), (a_continue || b_continue || c_continue)
    | Eq (a, b) ->
      let a_term, a_continue = rewrite_term a in 
      let b_term, b_continue = rewrite_term b in 
      (Eq (a_term, b_term)), (a_continue || b_continue)
    | Imply (a, b) ->
      let a_term, a_continue = rewrite_term a in 
      let b_term, b_continue = rewrite_term b in 
      (Eq (a_term, b_term)), (a_continue || b_continue)
    | And terms ->
      let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
      (PA.And new_terms), continue
    | Or terms ->
      let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
      (PA.Or new_terms), continue
    | Not term -> 
        let new_term, continue = rewrite_term term in 
        (PA.Not new_term), continue
    | Distinct terms ->
      let new_terms, continue = List.fold_left (fun (acc1, acc2) x -> (let a, b = (rewrite_term x) in ((acc1 @ [a]), (acc2 || b)))) ([], false) terms in 
      (PA.Distinct new_terms), continue
    | Attr (t, attributes) ->
      let new_term, continue = rewrite_term t in 
      (Attr (new_term, attributes)), continue
    | _ -> t, false
  end

let rewrite_iteration (stmts : PA.stmt list) = 
  let rec aux stmts acc (change : bool) = 
    begin match stmts with
      | stmt :: rest ->
        begin match stmt with
          | PA.Stmt_data data -> let reduced_adt_decl_sorts, reduced_adt_decl_funs = (add_adt_list_to_context data) in
                                (aux rest (acc @ reduced_adt_decl_sorts @ reduced_adt_decl_funs) change)
          | PA.Stmt_assert t -> let new_term, continue = (rewrite_term t) in 
                                 aux rest (acc @ [PA.Stmt_assert new_term]) (change || continue)
          | _ -> aux rest (acc @ [stmt]) change
        end
      | _ -> acc, change
    end in 
  aux stmts [] false



let rec rewrite_statements stmts = 
  let new_statements, continue = rewrite_iteration stmts in 
  if continue then (rewrite_statements new_statements)
  else new_statements
