
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
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil l1)) )
(assert (= l0 l0) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 l3) (is-Nil l2)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(check-sat)