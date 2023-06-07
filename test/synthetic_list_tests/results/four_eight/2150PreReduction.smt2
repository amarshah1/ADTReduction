
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
(assert (is-Cons Nil) )
(assert (and (= l2 l2) (is-Nil l0) (is-Nil l0) (is-Nil Nil)) )
(assert (and (= l1 l0) (is-Cons l3) (is-Cons Nil) (= l0 l3)) )
(assert (or (= l3 Nil) (is-Nil Nil) (is-Cons l0) (is-Nil l3)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(check-sat)
