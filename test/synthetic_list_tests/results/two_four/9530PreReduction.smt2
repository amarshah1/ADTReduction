
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
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)