
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
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l1 l1) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)