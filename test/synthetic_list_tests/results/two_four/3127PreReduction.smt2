
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
(assert (and (= l1 l1) (= l0 Nil) (is-Cons l0) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(check-sat)
