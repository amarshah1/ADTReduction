
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
(assert (is-Nil l0) )
(assert (and (= l0 l0) (is-Cons l1) (is-Cons Nil) (is-Nil l1)) )
(assert (= l1 Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
