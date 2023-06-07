
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
(assert (and (= l1 l1) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
