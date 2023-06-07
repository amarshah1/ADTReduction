
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
(assert (and (is-Cons Nil) (= l1 l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil l0) (= l1 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (or (is-Cons l0) (is-Cons Nil)) )
(check-sat)
