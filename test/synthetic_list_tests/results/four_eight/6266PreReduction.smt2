
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
(assert (and (is-Cons l0) (= l1 l2) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Nil l2) (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (or (= l0 l1) (is-Cons l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l2 Nil)) )
(check-sat)
