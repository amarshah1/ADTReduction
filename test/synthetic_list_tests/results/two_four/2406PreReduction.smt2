
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
(assert (or (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l1 l1) (is-Nil l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
