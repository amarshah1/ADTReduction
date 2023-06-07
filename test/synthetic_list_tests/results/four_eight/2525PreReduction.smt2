
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
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (and (= l0 Nil) (is-Nil l2) (= l2 l1) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 l0)) )
(check-sat)
