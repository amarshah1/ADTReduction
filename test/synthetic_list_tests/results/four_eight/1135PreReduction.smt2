
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
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 l1) (= l2 Nil)) )
(assert (or (= l1 l2) (is-Nil l0) (is-Nil l3)) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (is-Cons l0)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l2 l2) (= l2 Nil)) )
(assert (or (is-Nil l0) (= l2 Nil) (is-Nil Nil)) )
(check-sat)
