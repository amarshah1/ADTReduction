
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
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (is-Nil l1) (= l1 Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l0 Nil) (is-Nil l2) (= l2 Nil) (is-Nil Nil)) )
(check-sat)
