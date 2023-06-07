
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
(assert (not (= l0 l0)) )
(assert (and (= l1 l0) (= l2 Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (= l2 Nil) )
(assert (= l1 l1) )
(assert (not (= l2 l2)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l3) (= l3 l2)) )
(check-sat)
