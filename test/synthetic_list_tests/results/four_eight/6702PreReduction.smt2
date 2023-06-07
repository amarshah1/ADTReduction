
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
(assert (or (= l3 Nil) (= l3 l0) (= l1 Nil)) )
(assert (or (= l3 l1) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l3 l3) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (not (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(check-sat)
