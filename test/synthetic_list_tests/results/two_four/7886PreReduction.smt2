
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
(assert (or (= l1 l1) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l0 l1) (is-Nil Nil) (= l0 l1)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons l0)) )
(assert (or (= l0 Nil) (= l0 Nil)) )
(check-sat)
