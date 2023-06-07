
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
(assert (or (is-Cons l0) (= l1 Nil) (is-Cons l2) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil l0) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Cons l2) (= l0 l3)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
