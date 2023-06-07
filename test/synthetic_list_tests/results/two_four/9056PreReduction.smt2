
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
(assert (and (is-Cons l0) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Cons l0)) )
(assert (and (is-Cons l0) (= l0 Nil) (is-Cons l1)) )
(check-sat)
