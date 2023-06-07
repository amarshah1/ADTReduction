
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
(assert (and (is-Cons Nil) (is-Cons l3) (= l0 l2) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (= l2 l1) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 l0) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
