
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
(assert (or (= l2 l0) (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l0 l2) (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
