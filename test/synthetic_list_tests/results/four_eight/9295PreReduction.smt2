
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
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l2 l2) (is-Nil Nil) (= l3 l3)) )
(assert (and (is-Cons l1) (= l3 l0) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Nil l0) (is-Nil Nil) (= l0 Nil) (is-Cons l2)) )
(assert (or (= l0 l0) (= l2 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
