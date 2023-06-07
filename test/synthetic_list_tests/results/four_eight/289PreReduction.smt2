
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
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l0 l2) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l1 l2) (= l0 Nil) (= l3 l0) (is-Cons Nil)) )
(assert (= l3 l0) )
(assert (is-Nil l3) )
(assert (or (= l3 l0) (= l0 Nil)) )
(assert (and (= l3 l0) (= l1 l3) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
