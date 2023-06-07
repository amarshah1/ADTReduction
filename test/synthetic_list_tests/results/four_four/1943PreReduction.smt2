
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
(assert (or (= l3 Nil) (is-Nil Nil) (= l1 Nil) (= l3 l1)) )
(assert (or (is-Nil l0) (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Nil l0) (is-Nil l3) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
