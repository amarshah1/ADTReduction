(* Flatten: Introduce dummy variables to get rid of complex expressions*)

module PA = Smtlib_utils.V_2_6.Ast
open Context
exception UnsupportedQuery of string



(*Function that will take a match statement and term it into or/and/nots. Seems tricky to write since we need to look
   at the typing of each var. mc2 does not currently have an implementation for match statememts. TODO: maybe add this*)
(* let convert_match (term: PA.term) (matches : PA.match_branch list) = (*this term has to be a match*)
  let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
  Ctx.increment_vars_created ();
  let convert_match_helper (terms: PA.match_branch list) =
    begin match terms with
      | head :: tail -> 
          begin match head with
            | Match_default t ->
            | Match_case of string * var list * term
          end
      | Nil -> Nil
    end *)


let rec create_vars (term: PA.term) : PA.term = 
  match term with
  | True -> True
  | False -> False
  | Const v -> Const v
  | Arith (op, terms) -> 
      let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
      Ctx.increment_vars_created ();
      Ctx.add_new_statement var_name (get_type term) (PA.Arith (op, List.map create_vars terms));
      PA.Const var_name
  | App (s, terms) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (PA.App (s, List.map create_vars terms));
    PA.Const var_name
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match (_, _) ->raise (UnsupportedQuery "We do not currently support Match statements") (*TODO: maybe add support in future*)
  | If (t1, t2, t3) ->
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    let v1, v2, v3 = flatten t1, flatten t2, flatten t3 in
    Ctx.add_general_statement var_name (get_type t2) (PA.Stmt_assert (PA.Or [PA.And [v1; PA.Eq ((PA.Const var_name), v2)]; PA.And [PA.Not v1; PA.Eq ((PA.Const var_name), v3)]]));
    PA.Const var_name
  | Let (_, _) -> raise (UnsupportedQuery "All Lets should be inlined")
  | Is_a (s, t) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Is_a (s, create_vars t));
    PA.Const var_name
  | Fun (vt, t) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Fun (vt, create_vars t));
    PA.Const var_name
  | Eq (t1, t2) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Eq (create_vars t1, create_vars t2));
    PA.Const var_name
  | Imply (t1, t2) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (PA.Or [PA.Not (flatten t1); (flatten t2)]);
    PA.Const var_name
  | And terms -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (And (List.map flatten terms)); (* note that we use flatten for and, or, not*)
    PA.Const var_name
  | Or terms ->
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Or (List.map flatten terms)); (* note that we use flatten for and, or, not*)
    PA.Const var_name
  | Not t -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Not (flatten t)); (* note that we use flatten for and, or, not*)
    PA.Const var_name
  | Distinct terms -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Distinct (List.map create_vars terms));
    PA.Const var_name
  | Cast (t, ty) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Cast (create_vars t, ty));
    PA.Const var_name
  | Forall (_, _) -> raise (UnsupportedQuery "We do not support Forall")
  | Exists (_, _) -> raise (UnsupportedQuery "We do not support Exists")
  | Attr (t, attrs) -> 
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    Ctx.add_new_statement var_name (get_type term) (Attr (create_vars t, attrs));
    PA.Const var_name

  (* function that takes in a PA.term and flattens it by adding variables for subterms to t.new_statemets using the function create_vars*)
and flatten (term: PA.term) : PA.term =
  match term with
  | True -> True
  | False -> False
  | Const v -> Const v
  | Arith (op, terms) -> PA.Arith (op, (List.map create_vars terms))
  | App (s, terms) -> App (s, (List.map create_vars terms))
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match (_, _) -> raise (UnsupportedQuery "We do not currently support Match statements") (*TODO: maybe add support in future*)
  | If (t1, t2, t3) ->
    let var_name = "contrived_variable" ^ string_of_int(Ctx.t.vars_created) in
    Ctx.increment_vars_created ();
    let v1, v2, v3 = flatten t1, flatten t2, flatten t3 in
    Ctx.add_general_statement var_name (get_type t2) (PA.Stmt_assert (PA.Or [PA.And [v1; PA.Eq ((PA.Const var_name), v2)]; PA.And [PA.Not v1; PA.Eq ((PA.Const var_name), v3)]]));
    PA.Const var_name
  | Let (_, _) -> raise (UnsupportedQuery "All Lets should be inlined")
  | Is_a (s, t) -> Is_a (s, create_vars t)
  | Fun (vt, t) -> Fun (vt, create_vars t)
  | Eq (t1, t2) -> Eq (create_vars t1, create_vars t2)
  | Imply (t1, t2) -> PA.Or [PA.Not (flatten t1); (flatten t2)]
  | And terms -> And (List.map flatten terms) (* also doing flatten instead of create vars for And and Or but not sure if this is fully correct*)
  | Or terms -> Or (List.map flatten terms)
  | Not t -> Not (flatten t) (*Note: significant that we apply flatten and not create_vars here*)
  | Distinct terms -> Distinct (List.map create_vars terms)
  | Cast (t, ty) -> Cast (create_vars t, ty)
  | Forall (_, _) -> raise (UnsupportedQuery "We do not support Forall")
  | Exists (_, _) -> raise (UnsupportedQuery "We do not support Exists")
  | Attr (t, attrs) -> Attr (create_vars t, attrs)


(* stores declared functions and their types *) (*MAYBE THIS FUNCTIONALITY IS BEING COVERED IN CREATE*)
(* let rec store_functions (stmts : PA.stmt list) = 
  begin match stmts with
    | [] -> ()
    | stmt :: rest ->
      begin match stmt with
        | PA.Stmt_fun_def fun_def ->
          Ctx.add_new_statement fun_def.fr_decl.fun_name (fun_def.fr_decl.fun_ret) fun_def.fr_body;
          store_functions rest
        | _ -> store_functions rest
      end *)

let rec create_new_statements_declares (keys: string list) =
  begin match keys with
    | key :: rest ->
      let key_type, _ = Ctx.lookup_new_statement key in
      PA.Stmt_decl {fun_ty_vars = []; fun_name = key; fun_args = []; fun_ret =  key_type} :: (create_new_statements_declares rest)
      (* if we wanted to do it as a smt_fun_def instead: PA.Stmt_fun_def  {PA.fr_decl={PA.fun_ty_vars=[]; fun_args=[]; fun_name = key; fun_ret=key_type}*)
    | _ -> []
  end

let rec create_new_statements_asserts (keys: string list) =
  begin match keys with
    | key :: rest ->
      let _, key_term = Ctx.lookup_new_statement key in
      PA.Stmt_assert (PA.Eq (PA.Const key, key_term)) :: (create_new_statements_asserts rest)
    | _ -> []
  end

  let rec create_general_statement_declares (keys: string list) =
    begin match keys with
      | key :: rest ->
        let key_type, _ = Ctx.lookup_general_statement key in
        PA.Stmt_decl {fun_ty_vars = []; fun_name = key; fun_args = []; fun_ret =  key_type} :: (create_general_statement_declares rest)
      | _ -> []
      end

let rec create_general_statement_asserts (keys: string list) =
  begin match keys with
    | key :: rest ->
      let _, stmt = Ctx.lookup_general_statement key in
      stmt :: (create_general_statement_asserts rest)
    | _ -> []
    end


(* Takes in as input a list of statements. Runs flatten on all of them and adds into it the statements
 from new_statements(at the beginning) and general statements (at the end) *)
let flatten_statements (stmts : PA.stmt list) = 
  let rec flatten_statements_helper (stmts: PA.stmt list) =
    begin match stmts with
      | stmt :: rest ->
        begin match stmt with
        (* | Stmt_decl_sort of string * int (* arity *)
        | Stmt_decl of ty fun_decl *)
        | Stmt_fun_def fun_def ->
          (* Ctx.add_new_statement fun_def.fr_decl.fun_name (fun_def.fr_decl.fun_ret) fun_def.fr_body; *)
          Ctx.add_fun_def fun_def.fr_decl.fun_name (fun_def.fr_decl.fun_ret);
          stmt :: (flatten_statements_helper rest)
        | Stmt_decl fun_decl ->
          Ctx.add_fun_def fun_decl.fun_name fun_decl.fun_ret;
          stmt :: (flatten_statements_helper rest)
        | Stmt_fun_rec _ -> raise (UnsupportedQuery "We do not support Stmt_fun_rec")
        | Stmt_funs_rec _ -> raise (UnsupportedQuery "We do not support funs_rec_def")
        | Stmt_assert term -> Stmt_assert (flatten term) :: (flatten_statements_helper rest)
        | Stmt_check_sat -> (flatten_statements_helper rest)
        (* | Stmt_data of ((string * int) * cstor list) list *)
        | _ -> stmt :: (flatten_statements_helper rest)
        end
      | _ -> []
    end
  in
  let flattened_statements = flatten_statements_helper stmts in
  (create_new_statements_declares (StrTbl.keys_list Ctx.t.new_statements)) @ 
    (create_general_statement_declares (StrTbl.keys_list Ctx.t.general_statements)) @
    flattened_statements @ (create_new_statements_asserts (StrTbl.keys_list Ctx.t.new_statements)) @ 
    (create_general_statement_asserts (StrTbl.keys_list Ctx.t.general_statements)) @ 
    [Stmt_check_sat]
    (*TODO: I need a better way to order these statements. Will probably have to use flatten_statements_helper to keep track fo stuff*)

