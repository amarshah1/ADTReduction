
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
(assert (or (is-Cons l0) (is-Nil Nil) (is-Nil l1) (is-Cons Nil)) )
(assert (not (= l1 l1)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Nil l1) (is-Cons Nil)) )
(check-sat)
