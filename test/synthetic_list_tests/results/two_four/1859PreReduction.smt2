
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
(assert (not (= l0 l1)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 l1) (= l0 Nil)) )
(assert (and (= l0 l1) (= l0 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l0 Nil)) )
(check-sat)