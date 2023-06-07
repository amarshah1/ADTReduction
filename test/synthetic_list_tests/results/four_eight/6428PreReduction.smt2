
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
(assert (or (= l0 Nil) (= l2 Nil) (= l1 l0) (= l1 l3)) )
(assert (= l1 l2) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (or (= l0 l0) (= l3 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l1 l0) (is-Nil l0) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(check-sat)
