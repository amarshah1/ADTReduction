
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (= l0 l0) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (not (= l0 l1)) )
(assert (= l0 Nil) )
(check-sat)
