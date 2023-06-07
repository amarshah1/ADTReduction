
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l1) (= l0 l1)) )
(check-sat)
