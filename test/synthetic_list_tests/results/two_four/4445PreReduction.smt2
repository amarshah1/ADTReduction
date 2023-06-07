
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
(assert (= l1 Nil) )
(assert (= l0 l0) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l1) (is-Nil l0) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
