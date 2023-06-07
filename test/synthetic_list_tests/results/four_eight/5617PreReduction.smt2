
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
(assert (or (is-Nil Nil) (= l2 Nil) (is-Cons l2) (is-Cons l3)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l0 l1)) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 l1)) )
(assert (or (= l0 l2) (= l3 l1) (is-Nil l1) (is-Nil Nil)) )
(check-sat)
