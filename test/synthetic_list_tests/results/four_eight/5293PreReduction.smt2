
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
(assert (is-Cons Nil) )
(assert (and (= l3 l1) (= l2 l0) (is-Nil Nil)) )
(assert (or (is-Nil l1) (= l3 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (not (is-Cons Nil)) )
(check-sat)
