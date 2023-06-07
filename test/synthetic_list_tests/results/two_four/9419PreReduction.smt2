
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
(assert (is-Nil l0) )
(assert (not (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
