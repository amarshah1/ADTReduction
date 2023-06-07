
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
(assert (is-Nil l1) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l1 l0)) )
(assert (is-Cons Nil) )
(check-sat)
