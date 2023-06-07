
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
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 Nil) (is-Nil l1)) )
(assert (or (= l1 Nil) (is-Nil l0)) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)