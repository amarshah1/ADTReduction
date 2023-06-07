
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
(assert (or (is-Nil Nil) (is-Nil l0) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Cons l1) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Nil l0) (= l0 l0) (is-Nil Nil)) )
(check-sat)