
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
(assert (= l1 Nil) )
(assert (or (= l2 l1) (= l3 l0)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (is-Nil l1)) )
(assert (or (is-Nil l2) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
