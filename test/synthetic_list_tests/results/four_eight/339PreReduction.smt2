
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
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l1 l0) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil l1)) )
(check-sat)
