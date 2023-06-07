
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
(assert (= l0 l1) )
(assert (or (= l1 l0) (= l0 Nil) (= l0 l1) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Nil l0) (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
