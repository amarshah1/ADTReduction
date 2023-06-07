
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
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Nil l3) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Nil l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
