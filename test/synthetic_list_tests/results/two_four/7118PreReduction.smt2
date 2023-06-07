
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
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (is-Cons l0) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons l1) (is-Nil Nil)) )
(check-sat)