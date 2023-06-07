
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
(assert (and (is-Nil Nil) (= l1 l1) (is-Nil Nil)) )
(assert (and (= l1 l0) (is-Nil l0) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
