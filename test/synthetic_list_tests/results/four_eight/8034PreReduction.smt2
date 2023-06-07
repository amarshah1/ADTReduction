
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
(assert (= l0 l1) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (not (= l1 l3)) )
(assert (is-Nil l2) )
(assert (= l0 l1) )
(check-sat)
