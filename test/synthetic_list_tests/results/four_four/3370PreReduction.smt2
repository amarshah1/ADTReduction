
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
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (= l2 l3) (= l3 Nil) (is-Nil Nil) (= l0 l3)) )
(assert (and (is-Nil l2) (is-Nil l0) (= l0 l3)) )
(check-sat)
