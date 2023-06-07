
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
(assert (or (is-Cons l0) (= l0 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 l1) (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(assert (not (is-Nil Nil)) )
(check-sat)