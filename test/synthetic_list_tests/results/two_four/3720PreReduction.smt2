
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
(assert (or (is-Nil Nil) (= l1 l0) (is-Cons Nil)) )
(assert (= l1 l1) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(check-sat)
