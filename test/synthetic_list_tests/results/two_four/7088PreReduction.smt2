
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
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
