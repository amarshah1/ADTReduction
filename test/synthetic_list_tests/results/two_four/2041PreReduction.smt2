
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
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Cons l0) (= l1 Nil)) )
(assert (and (= l0 l1) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
