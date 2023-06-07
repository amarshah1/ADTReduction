
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
(assert (and (is-Cons Nil) (is-Cons l1) (is-Nil Nil)) )
(assert (or (is-Cons l0) (= l0 l2)) )
(assert (or (is-Nil Nil) (= l2 l3) (= l0 l3)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l2 l0) (= l3 Nil)) )
(assert (or (is-Cons l0) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Nil l2) (= l2 Nil)) )
(assert (= l2 Nil) )
(check-sat)
