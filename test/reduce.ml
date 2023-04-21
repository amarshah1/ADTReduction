open OUnit2
open Flatten

module PA = Smtlib_utils.V_2_6.Ast

let lra = PA.Stmt_set_logic "LRA"

let () = assert_equal {PA.stmt = lra; loc = None} (stmt_to_statement lra)