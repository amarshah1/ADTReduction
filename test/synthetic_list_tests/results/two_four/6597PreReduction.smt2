
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
(assert (is-Nil l1) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons l1) (= l1 Nil) (= l1 l0) (is-Cons Nil)) )
(check-sat)