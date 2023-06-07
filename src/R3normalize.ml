(* Converting a flattened, inlined formula to NNF *)
module PA = Smtlib_utils.V_2_6.Ast
open R1inline
open R2flatten
open Context
exception UnsupportedQuery of string

let negate (not_parity: bool) (term: PA.term) = 
  if not_parity then (PA.Not term)
  else term


let rec normalize (not_parity: bool)  (term : PA.term) =
  match term with
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match _ ->raise (UnsupportedQuery "We do not currently support Match")
  | If _ -> raise (UnsupportedQuery "If statements should be handled by flatten step")
  | Let _ -> raise (UnsupportedQuery "If statements should be handled by inline step")
  | Imply _ -> raise (UnsupportedQuery "Imply statements should be handled by flatten step")
  | And terms -> 
      if not_parity then PA.Or (List.map (normalize not_parity) terms)
      else PA.And (List.map (normalize not_parity) terms)
  | Or terms -> 
    if not_parity then And (List.map (normalize not_parity) terms)
    else Or (List.map (normalize not_parity) terms)
  | Not t -> (normalize (not not_parity) t)
  | Forall (_, _) -> raise (UnsupportedQuery "We do not support Forall")
  | Exists (_, _) -> raise (UnsupportedQuery "We do not support Exists")
  | _ -> negate not_parity term (* catch all for everything else: note we assume that everything is flattened and typechecked*)

let rec normalize_statements stmts =
    begin match stmts with
      | PA.Stmt_assert term :: rest -> PA.Stmt_assert (normalize false term) :: (normalize_statements rest)
      | stmt :: rest -> stmt :: (normalize_statements rest)
      | _ -> []
    end

