module PA = Smtlib_utils.V_2_6.Ast
open R1inline
open R2flatten
open R3normalize
open R4reduce_rules
open R5reduce_axioms
open Context



(* Substitute a term for a variable in a term *)

let _ = reset_ctx () (*need to reset the context beforehand*)
let stmt_list = begin match (Smtlib_utils.V_2_6.parse_file "test/unit_tests/T4reduce_rules/test2.smt2"(*"test/QF_DT2/20210312-Bouvier/vlsat3_b13.smt2"*)) with
|Ok(f) -> f
|Error(_) -> print_string "failure!!!"; []
end

(*Printing the AST*)
(* Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list; *)


let inlined_stmt_list = full_reduction (List.map statement_to_stmt stmt_list)

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) (List.map stmt_to_statement inlined_stmt_list)