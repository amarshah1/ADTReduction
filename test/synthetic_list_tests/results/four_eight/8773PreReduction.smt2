
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
(assert (or (= l0 Nil) (is-Cons l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 l2) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l2 l0) (= l0 Nil)) )
(check-sat)
