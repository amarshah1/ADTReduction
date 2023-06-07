
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
(assert (is-Nil Nil) )
(assert (or (is-Cons l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l1) (is-Cons Nil) (is-Nil l0) (is-Cons Nil)) )
(check-sat)