
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
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (= l2 l1) )
(assert (or (= l0 l1) (= l3 l2) (= l1 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (= l0 l2) )
(check-sat)
