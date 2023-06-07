
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
(assert (and (is-Nil Nil) (= l1 Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l0) (= l0 Nil) (= l0 l1) (= l0 l1)) )
(check-sat)