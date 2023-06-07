
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
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l2) )
(assert (and (= l2 l0) (is-Nil l1) (= l0 l1) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil l2) (= l3 l2)) )
(check-sat)
