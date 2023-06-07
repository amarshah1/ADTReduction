
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
(assert (or (= l1 l1) (= l0 Nil) (= l2 l3) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
