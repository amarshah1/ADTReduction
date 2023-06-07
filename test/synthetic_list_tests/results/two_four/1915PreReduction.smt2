
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
(assert (and (is-Cons Nil) (is-Nil l1) (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l1) )
(check-sat)