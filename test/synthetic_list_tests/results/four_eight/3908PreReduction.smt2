
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
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 Nil) (= l0 l3)) )
(assert (or (= l0 l1) (= l3 l3) (is-Nil Nil)) )
(assert (or (= l2 l3) (= l3 Nil)) )
(assert (= l0 l2) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)