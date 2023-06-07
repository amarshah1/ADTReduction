
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
(assert (or (is-Cons l0) (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
