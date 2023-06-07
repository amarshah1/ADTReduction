
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
(assert (or (is-Cons Nil) (= l0 l0) (= l2 l0) (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (is-Nil l0) (is-Nil Nil) (= l0 l3)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(check-sat)
