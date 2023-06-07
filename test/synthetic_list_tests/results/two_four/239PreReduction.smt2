
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
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil) (= l1 l0)) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(check-sat)
