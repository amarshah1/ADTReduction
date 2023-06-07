
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
(assert (or (is-Nil l0) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil l2) (is-Nil Nil) (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 l3) )
(check-sat)
