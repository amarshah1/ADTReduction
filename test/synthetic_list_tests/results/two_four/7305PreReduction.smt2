
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
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (= l0 l1) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
