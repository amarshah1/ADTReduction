
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
(assert (or (= l0 l0) (is-Nil Nil) (= l0 l1)) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
