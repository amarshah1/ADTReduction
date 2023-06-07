
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
(assert (and (= l0 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (= l3 l0) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 l1) (= l1 l3)) )
(check-sat)
