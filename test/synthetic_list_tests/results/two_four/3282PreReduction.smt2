
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
(assert (and (is-Cons l0) (= l1 l0) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
