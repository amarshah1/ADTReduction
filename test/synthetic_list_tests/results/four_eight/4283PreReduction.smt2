
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
(assert (or (= l1 l0) (= l2 l2)) )
(assert (or (= l2 l2) (is-Nil Nil)) )
(assert (or (= l0 Nil) (is-Nil l0) (= l1 l2) (= l2 Nil)) )
(assert (or (is-Cons l3) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (= l0 l2)) )
(assert (or (= l0 l1) (= l1 l1) (= l0 Nil) (= l2 l0)) )
(assert (= l0 Nil) )
(check-sat)
