
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
(assert (and (= l1 Nil) (is-Nil l0) (is-Nil Nil) (is-Cons l0)) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l1 l0) (= l0 l0) (is-Cons l1) (is-Nil l0)) )
(check-sat)
