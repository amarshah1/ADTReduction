
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
(assert (or (= l2 l0) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil l2)) )
(assert (= l1 l2) )
(assert (= l0 l2) )
(assert (or (= l2 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l0 l3)) )
(check-sat)
