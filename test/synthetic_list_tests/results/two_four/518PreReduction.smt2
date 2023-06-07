
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
(assert (not (= l0 Nil)) )
(assert (or (= l1 l0) (is-Cons Nil) (= l1 l1) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)