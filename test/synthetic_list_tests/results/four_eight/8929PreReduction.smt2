
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
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil l3) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (not (= l2 Nil)) )
(assert (= l0 l1) )
(assert (= l1 l0) )
(check-sat)
