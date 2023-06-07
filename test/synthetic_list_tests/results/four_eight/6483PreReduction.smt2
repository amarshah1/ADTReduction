
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
(assert (is-Nil l2) )
(assert (= l3 l1) )
(assert (or (= l1 l1) (is-Nil Nil) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
