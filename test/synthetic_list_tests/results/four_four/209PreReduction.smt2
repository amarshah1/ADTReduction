
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
(assert (and (= l2 l3) (is-Nil l3)) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (or (= l0 l1) (is-Nil Nil) (is-Nil Nil) (is-Nil l2)) )
(check-sat)
