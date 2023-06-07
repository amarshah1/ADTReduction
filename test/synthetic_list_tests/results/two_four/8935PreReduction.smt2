
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
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l1 l0) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l0 l1) )
(assert (= l0 Nil) )
(check-sat)
