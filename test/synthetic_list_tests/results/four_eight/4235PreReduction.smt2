
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
(assert (and (= l2 l3) (is-Nil Nil) (= l0 Nil) (= l2 l2)) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l2 l3) (is-Cons Nil) (is-Nil l1) (= l3 Nil)) )
(assert (or (= l2 l0) (= l1 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l3) (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l1 l3) (= l3 l2) (= l1 l1) (is-Nil l3)) )
(assert (or (is-Cons l0) (= l0 Nil) (= l2 Nil) (= l0 l2)) )
(check-sat)
