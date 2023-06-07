
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
(assert (is-Cons l0) )
(assert (or (= l0 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil l1) (is-Cons l1)) )
(assert (is-Cons Nil) )
(check-sat)