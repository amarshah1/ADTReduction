
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
(assert (and (= l2 Nil) (= l1 l1) (= l2 l1)) )
(assert (not (= l2 l2)) )
(assert (= l0 l1) )
(assert (= l0 l0) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (= l0 l1) )
(check-sat)
