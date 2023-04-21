module PA = Smtlib_utils.V_2_6.Ast
open Flatten


(* Substitute a term for a variable in a term *)

let stmt_list = begin match (Smtlib_utils.V_2_6.parse_file "test.smt2") with
|Ok(f) -> f
|Error(_) -> print_string "failure!!!"; []
end

(*Printing the AST*)
(* Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list; *)


let inlined_stmt_list = inline_statements (List.map statement_to_stmt stmt_list)

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list

let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) (List.map stmt_to_statement inlined_stmt_list)