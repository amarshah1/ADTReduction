
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
(assert (= l3 l1) )
(assert (and (is-Nil Nil) (is-Nil l2) (= l0 l0) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 l2) (= l1 l3) (= l1 Nil) (is-Nil Nil)) )
(check-sat)