
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
(assert (is-Nil l3) )
(assert (or (is-Nil l0) (= l2 l3) (is-Nil l1) (= l0 l3)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l1 l1) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil l1) )
(check-sat)
