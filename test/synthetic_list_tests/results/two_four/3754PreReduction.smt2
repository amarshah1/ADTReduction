
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
(assert (or (is-Nil Nil) (= l0 l1)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons l1)) )
(assert (or (is-Cons l0) (= l1 l0) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
