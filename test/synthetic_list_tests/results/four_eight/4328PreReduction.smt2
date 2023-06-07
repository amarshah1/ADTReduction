
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
(assert (or (= l3 Nil) (= l2 l1) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l2 l2) (= l1 Nil)) )
(assert (= l2 l0) )
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (is-Nil l3)) )
(assert (= l0 l2) )
(assert (and (= l2 Nil) (= l1 l1) (= l2 Nil) (= l0 l3)) )
(check-sat)
