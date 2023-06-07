
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
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (= l1 l2) )
(assert (is-Nil l0) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Nil l0) (= l0 Nil) (= l3 Nil)) )
(check-sat)
