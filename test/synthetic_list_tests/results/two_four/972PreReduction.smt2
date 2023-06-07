
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
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l0 l1) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
