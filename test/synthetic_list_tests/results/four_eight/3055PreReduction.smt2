
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
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l3 l0) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil l3)) )
(assert (= l0 Nil) )
(check-sat)
