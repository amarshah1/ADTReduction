
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
(assert (is-Nil l2) )
(assert (is-Nil l0) )
(assert (and (= l1 l3) (= l3 l1) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (and (= l2 l2) (is-Cons l0) (is-Cons Nil)) )
(assert (and (= l3 l2) (= l2 l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(check-sat)
