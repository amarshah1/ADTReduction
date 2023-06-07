
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
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l1 l0) (is-Nil l1) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(check-sat)
