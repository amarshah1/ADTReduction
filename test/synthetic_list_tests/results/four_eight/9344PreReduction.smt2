
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
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l1) (= l3 l2) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l0) (= l2 Nil) (= l3 l0) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 l3) (is-Cons Nil) (is-Nil l3)) )
(check-sat)
