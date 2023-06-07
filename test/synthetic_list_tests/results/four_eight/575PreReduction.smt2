
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
(assert (is-Nil l0) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Nil l3)) )
(assert (= l2 l2) )
(assert (= l2 l0) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
