
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
(assert (or (= l0 l1) (is-Nil l0) (is-Cons l0) (= l0 Nil)) )
(assert (or (= l1 l1) (= l2 l0) (= l1 l3)) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons l3) (= l3 Nil)) )
(check-sat)
