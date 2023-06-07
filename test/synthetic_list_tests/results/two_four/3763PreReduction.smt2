
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
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (or (= l0 l0) (= l0 l0) (is-Cons l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
