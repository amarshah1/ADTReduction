
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
(assert (not (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 l0) (= l0 Nil)) )
(assert (or (= l0 l2) (is-Nil l1)) )
(check-sat)
