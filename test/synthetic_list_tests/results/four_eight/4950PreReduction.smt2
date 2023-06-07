
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
(assert (= l0 l3) )
(assert (is-Nil l0) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (not (= l2 Nil)) )
(check-sat)
