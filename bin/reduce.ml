module PA = Smtlib_utils.V_2_6.Ast
open R1inline
open R2flatten
open R3normalize
open R4reduce_rules
open R5reduce_axioms
open Context



(* Substitute a term for a variable in a term *)

let _ = reset_ctx () (*need to reset the context beforehand*)
let stmt_list = begin match (Smtlib_utils.V_2_6.parse_file "test/synthetic_list_tests/results/two_four/10PreReduction.smt2") with
|Ok(f) -> f
|Error(_) -> print_string "failure!!!"; []
end

(*Printing the AST*)
(* Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list; *)


let inlined_stmt_list = reduce_axioms (reduce_rule_statements (List.map statement_to_stmt stmt_list))

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) (List.map stmt_to_statement inlined_stmt_list)