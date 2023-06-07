
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
(assert (is-Cons l1) )
(assert (or (= l1 l0) (is-Nil l0) (= l1 l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(check-sat)
