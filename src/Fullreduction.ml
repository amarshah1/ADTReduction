open R6reduce_axioms
open Context

let process_smt2 filename =
  (* let in_channel = open_in filename in
  let content = really_input_string in_channel (in_channel_length in_channel) in
  close_in in_channel; *)
  
  let stmt_list = begin match (Smtlib_utils.V_2_6.parse_file filename) with
                    |Ok(f) -> f
                    |Error(_) -> print_string "failure!!!"; []
                  end in
  
  (*Printing the AST*)
  (* Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list; *)
  
  
  let reduced_stmt_list = full_reduction (List.map statement_to_stmt stmt_list) in

  let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) (stmt_to_statements reduced_stmt_list) in
  reset_ctx();
  ()
  (* print_endline content *)

let () =
  let filename = Sys.argv.(1) in
  process_smt2 filename

