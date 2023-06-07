
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
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (= l2 l0) (= l3 l2) (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (is-Nil l0) )
(assert (is-Nil l2) )
(check-sat)
