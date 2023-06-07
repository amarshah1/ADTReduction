
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
(assert (or (= l1 Nil) (= l1 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (not (is-Cons Nil)) )
(check-sat)