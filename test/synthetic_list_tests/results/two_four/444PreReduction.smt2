
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
(assert (and (= l1 Nil) (= l0 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Nil l0) (is-Nil Nil)) )
(check-sat)