
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
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l2) (is-Nil l2) (= l3 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l0 l0)) )
(check-sat)
