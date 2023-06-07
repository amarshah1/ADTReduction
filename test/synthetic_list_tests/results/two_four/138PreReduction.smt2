
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
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (is-Cons l0) (= l0 Nil) (is-Nil l0)) )
(assert (and (= l0 Nil) (is-Nil l0) (is-Cons Nil)) )
(check-sat)
