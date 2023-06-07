
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (is-Nil Nil) (is-Nil l1) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(check-sat)
