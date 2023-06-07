
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
(assert (and (is-Cons Nil) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(check-sat)
