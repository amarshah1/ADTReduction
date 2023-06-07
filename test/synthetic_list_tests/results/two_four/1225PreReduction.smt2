
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
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
