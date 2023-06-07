
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
(assert (= l0 Nil) )
(assert (and (is-Nil l0) (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
