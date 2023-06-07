
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
(assert (= l1 l0) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil l1) (is-Nil Nil)) )
(assert (and (= l0 l0) (is-Nil Nil)) )
(check-sat)
