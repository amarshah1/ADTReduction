
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
(assert (is-Nil l1) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
