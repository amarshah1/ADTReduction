
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
(assert (= l0 l1) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
