
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
(assert (or (= l0 l1) (= l1 Nil) (= l1 l0)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 l0) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
