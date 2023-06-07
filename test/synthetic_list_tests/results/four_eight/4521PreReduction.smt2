
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
(assert (and (is-Nil l2) (is-Nil Nil)) )
(assert (or (= l1 l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l2 l2) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
