
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
(assert (or (is-Cons Nil) (= l0 Nil) (is-Nil l0) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l0 l1)) )
(assert (not (is-Nil l1)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(check-sat)
