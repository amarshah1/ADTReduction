
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
(assert (or (is-Cons l1) (is-Nil l1) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (not (= l1 Nil)) )
(check-sat)
