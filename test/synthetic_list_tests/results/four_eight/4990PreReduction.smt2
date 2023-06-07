
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
(assert (or (is-Cons Nil) (= l3 l2) (is-Cons l2) (= l3 Nil)) )
(assert (or (is-Nil l1) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (or (is-Nil l1) (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l0 l0) (= l1 Nil) (= l3 l2) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l3 l3) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
