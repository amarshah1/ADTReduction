
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
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Cons l0) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)