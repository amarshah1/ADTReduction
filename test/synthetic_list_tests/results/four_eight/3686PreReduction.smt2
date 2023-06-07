
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
(assert (or (= l0 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l2 l3) (is-Nil l1) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil l2) (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l2 l3) (= l0 l0) (is-Nil Nil) (= l1 l3)) )
(assert (and (= l0 l2) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
