
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
(assert (or (= l3 l3) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons l0) (= l3 l0) (= l2 Nil)) )
(assert (or (= l0 l3) (= l2 Nil) (= l1 Nil)) )
(assert (and (is-Nil l0) (is-Nil Nil) (= l0 l3)) )
(assert (and (= l0 l0) (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l3 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l0) (= l3 l3) (is-Cons l3) (= l0 Nil)) )
(check-sat)
