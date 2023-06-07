
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
(assert (not (is-Cons l0)) )
(assert (and (is-Nil l0) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(check-sat)
