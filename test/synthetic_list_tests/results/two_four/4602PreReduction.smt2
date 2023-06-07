
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
(assert (not (= l0 Nil)) )
(assert (or (is-Nil l0) (is-Nil Nil) (= l0 l0) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(check-sat)
