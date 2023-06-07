
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
(assert (or (= l0 l3) (is-Cons l3) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l3 l0) (= l3 Nil) (= l1 l2) (= l1 Nil)) )
(assert (and (is-Nil l1) (= l2 Nil) (= l0 Nil) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l0 Nil) (= l2 l3)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
