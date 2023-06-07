
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
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (= l0 Nil)) )
(assert (= l3 l1) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (= l1 l1) (is-Nil l3)) )
(assert (is-Nil Nil) )
(check-sat)
