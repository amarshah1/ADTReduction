
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
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil l0) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 l1) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l3 l1) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l3)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)