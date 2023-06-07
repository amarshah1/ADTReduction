
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
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l3 l1) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l1) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (or (= l0 l1) (= l0 l0) (= l1 Nil) (= l3 l3)) )
(assert (= l0 Nil) )
(check-sat)
