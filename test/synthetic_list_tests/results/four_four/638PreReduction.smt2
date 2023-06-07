
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
(assert (= l3 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l3 l0) (is-Nil Nil)) )
(assert (or (is-Nil l3) (= l0 Nil) (= l0 l3)) )
(check-sat)