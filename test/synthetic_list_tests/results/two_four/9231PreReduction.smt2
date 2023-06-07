
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
(assert (or (is-Cons Nil) (is-Cons l1) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Nil l0) (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 l0)) )
(check-sat)
