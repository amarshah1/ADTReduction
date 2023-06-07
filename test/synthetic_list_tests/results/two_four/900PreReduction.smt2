
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
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
