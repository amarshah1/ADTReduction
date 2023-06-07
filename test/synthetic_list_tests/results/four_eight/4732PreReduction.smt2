
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
(assert (not (= l1 l0)) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l3 l1) )
(check-sat)
