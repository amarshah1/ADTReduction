
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
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil) (is-Nil l1)) )
(assert (not (is-Nil l0)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(check-sat)
