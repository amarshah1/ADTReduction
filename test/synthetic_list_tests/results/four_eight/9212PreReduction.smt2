
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
(assert (is-Nil l1) )
(assert (or (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l1 l3) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (= l3 Nil) )
(check-sat)
