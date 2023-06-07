
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
(assert (= l2 l2) )
(assert (and (is-Cons Nil) (= l1 l3) (= l3 l1)) )
(assert (and (= l1 l2) (= l2 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l2 Nil) (= l0 Nil)) )
(assert (and (is-Nil l1) (is-Cons Nil) (is-Cons l3) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(check-sat)
