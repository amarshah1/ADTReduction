
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
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (= l1 l0) (= l0 l1)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Cons l1) (= l1 Nil)) )
(check-sat)