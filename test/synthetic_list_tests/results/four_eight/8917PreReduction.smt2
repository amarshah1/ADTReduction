
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
(assert (= l0 Nil) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (= l3 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (and (is-Nil l3) (= l1 Nil) (= l0 Nil)) )
(check-sat)
