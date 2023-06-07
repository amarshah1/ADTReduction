
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
(assert (not (= l3 Nil)) )
(assert (and (is-Nil l2) (= l0 Nil) (is-Nil l0) (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (is-Nil l2) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (= l3 l0) )
(check-sat)
