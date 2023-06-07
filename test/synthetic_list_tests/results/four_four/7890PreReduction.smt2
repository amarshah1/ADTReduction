
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
(assert (not (= l0 l3)) )
(assert (= l2 l0) )
(assert (and (is-Nil Nil) (= l3 l0) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l3 l2) (= l1 Nil)) )
(check-sat)
