module PA = Smtlib_utils.V_2_6.Ast
open R2rewrite
open R6reduce_axioms
open Context



(* Substitute a term for a variable in a term *)

let _ = reset_ctx () (*need to reset the context beforehand*)
let stmt_list = begin match (Smtlib_utils.V_2_6.parse_file "test/unit_tests/T5reduce_axioms/test8.smt2"(*"test/QF_DT2/20210312-Bouvier/vlsat3_b13.smt2"*)) with
|Ok(f) -> f
|Error(_) -> print_string "failure!!!"; []
end

(*Printing the AST*)
(* Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list; *)

(* let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list *)
let inlined_stmt_list = full_reduction (List.map statement_to_stmt stmt_list)

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) (stmt_to_statements inlined_stmt_list) 