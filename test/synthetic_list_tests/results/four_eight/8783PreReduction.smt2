
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
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil l0) (is-Nil Nil) (is-Nil l3)) )
(assert (is-Nil l1) )
(assert (not (= l3 Nil)) )
(assert (and (= l0 l3) (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Nil Nil)) )
(check-sat)
