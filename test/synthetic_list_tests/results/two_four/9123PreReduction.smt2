
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
(assert (and (= l0 l1) (= l1 Nil) (= l0 Nil) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Cons l0) (= l1 Nil) (= l0 l0) (= l0 Nil)) )
(check-sat)
