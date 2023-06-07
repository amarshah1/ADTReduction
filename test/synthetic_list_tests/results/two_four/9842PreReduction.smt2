
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
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (and (is-Cons l0) (= l0 Nil) (= l1 l1) (is-Cons Nil)) )
(check-sat)
