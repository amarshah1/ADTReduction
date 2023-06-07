
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
(assert (and (= l1 l1) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (is-Nil l0) (is-Cons l0)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil) (= l1 Nil)) )
(check-sat)
