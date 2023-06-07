
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
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l0 l0) )
(assert (and (= l1 l3) (= l1 Nil) (= l3 l0)) )
(assert (not (= l1 l3)) )
(check-sat)
