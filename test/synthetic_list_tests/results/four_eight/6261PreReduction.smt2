
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
(assert (and (= l0 l1) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 l3) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil l0) )
(check-sat)
