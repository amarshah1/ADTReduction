
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
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l0 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(check-sat)