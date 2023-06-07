
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
(assert (and (is-Nil l1) (is-Cons Nil) (= l1 Nil) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (is-Nil l0)) )
(check-sat)
