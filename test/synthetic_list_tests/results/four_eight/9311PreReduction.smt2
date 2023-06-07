
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
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l2 l3) (= l2 Nil)) )
(assert (= l3 l0) )
(assert (= l0 l0) )
(assert (or (= l2 Nil) (= l1 Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(check-sat)
