
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
(assert (= l0 l1) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l1 l1) (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
