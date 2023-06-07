
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
(assert (and (= l2 l1) (= l0 l3)) )
(assert (not (= l2 Nil)) )
(assert (= l1 l0) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l3 l2) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (and (= l2 l0) (= l1 Nil) (= l0 Nil)) )
(check-sat)
