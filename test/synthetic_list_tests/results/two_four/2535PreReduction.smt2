
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
(assert (and (is-Cons l0) (= l0 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)