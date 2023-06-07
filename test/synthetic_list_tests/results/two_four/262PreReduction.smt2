
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
(assert (and (= l0 l0) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 l0) (is-Nil Nil) (is-Nil Nil) (= l0 l0)) )
(assert (not (is-Nil l0)) )
(check-sat)
