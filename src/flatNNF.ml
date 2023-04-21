module PA = Smtlib_utils.V_2_6.Ast


(* Substitute a term for a variable in a term *)
let rec substitute var (sub_term : PA.term) (acc_term : PA.term) =
  match acc_term with
  | Const v when v = var -> sub_term
  | Arith (op, terms) -> Arith (op, List.map (substitute var sub_term) terms)
  | App (s, terms) -> App (s, List.map (substitute var sub_term) terms)
  | HO_app (t1, t2) -> HO_app (substitute var sub_term t1, substitute var sub_term t2)
  | Match (t, branches) -> Match (substitute var sub_term t, branches)
  | If (t1, t2, t3) ->
    If (substitute var sub_term t1, substitute var sub_term t2, substitute var sub_term t3)
  | Let (bindings, t) ->
    if List.mem_assoc var bindings then acc_term
    else Let (bindings, substitute var sub_term t)
  | Is_a (s, t) -> Is_a (s, substitute var sub_term t)
  | Fun (vt, t) -> Fun (vt, substitute var sub_term t)
  | Eq (t1, t2) -> Eq (substitute var sub_term t1, substitute var sub_term t2)
  | Imply (t1, t2) -> Imply (substitute var sub_term t1, substitute var sub_term t2)
  | And terms -> And (List.map (substitute var sub_term) terms)
  | Or terms -> Or (List.map (substitute var sub_term) terms)
  | Not t -> Not (substitute var sub_term t)
  | Distinct terms -> Distinct (List.map (substitute var sub_term) terms)
  | Cast (t, ty) -> Cast (substitute var sub_term t, ty)
  | Forall (vars, t) -> Forall (vars, substitute var sub_term t)
  | Exists (vars, t) -> Exists (vars, substitute var sub_term t)
  | Attr (t, attrs) -> Attr (substitute var sub_term t, attrs)
  | _ -> acc_term

(* Substitute multiple terms for their corresponding variables in a term *)
let multi_substitute substitutions term =
  List.fold_left
    (fun acc_term (var, sub_term) -> substitute var sub_term acc_term)
    term substitutions


let inline_statements stmts =
  let rec aux defs acc = function
    | [] -> List.rev acc
    | stmt :: rest ->
      begin
        match stmt with
        | PA.Stmt_fun_def fun_def ->
          aux ((fun_def.fr_decl.fun_name, fun_def.fr_body) :: defs) acc rest
        | Stmt_fun_rec fun_def ->
          aux ((fun_def.fr_decl.fun_name, fun_def.fr_body) :: defs) acc rest
        | Stmt_funs_rec funs_rec_def ->
          let new_defs =
            List.map2
              (fun fr_decl fr_body -> (fr_decl.PA.fun_name, fr_body))
              funs_rec_def.fsr_decls funs_rec_def.fsr_bodies
          in
          aux (new_defs @ defs) acc rest
        | Stmt_assert term ->
          let inlined_term = multi_substitute defs term in
          aux defs (PA.Stmt_assert(inlined_term) :: acc) rest
        | _ -> aux defs (stmt :: acc) rest
      end
  in
  aux [] [] stmts

  let statement_to_stmt (s: PA.statement) = s.PA.stmt

  (*Goes from PA.stmt to PA.statement with the location being None*)
  let stmt_to_statement (s: PA.stmt) : PA.statement = {PA.stmt = s; loc = None}

  let stmt_list = begin match (Smtlib_utils.V_2_6.parse_file "test.smt2") with
                        |Ok(f) -> f
                        |Error(_) -> print_string "failure!!!"; []
                    end

  (*Printing the AST*)
(* Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list; *)
  
  
  let inlined_stmt_list = inline_statements (List.map statement_to_stmt stmt_list)

  let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) stmt_list

  let () = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) (List.map stmt_to_statement inlined_stmt_list)