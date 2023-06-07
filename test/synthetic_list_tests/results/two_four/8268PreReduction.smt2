
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
(assert (or (is-Cons Nil) (is-Cons l0) (= l0 Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l1) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Nil l1) (is-Cons Nil)) )
(check-sat)
