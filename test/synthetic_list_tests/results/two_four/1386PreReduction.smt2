
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
(assert (not (= l1 l0)) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Nil l0) (= l1 Nil) (= l1 Nil)) )
(check-sat)
