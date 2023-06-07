
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
(assert (and (is-Nil Nil) (= l3 l1)) )
(assert (and (= l3 l0) (= l3 Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
