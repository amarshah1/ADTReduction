
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l3 l0) (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l3 l3)) )
(assert (= l0 l2) )
(assert (not (is-Nil Nil)) )
(check-sat)