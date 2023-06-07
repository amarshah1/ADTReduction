
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
(assert (or (= l3 l1) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)