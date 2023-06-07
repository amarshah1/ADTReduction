
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
(assert (= l3 l1) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(check-sat)