
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
(assert (or (is-Cons l1) (= l1 l0) (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons l1) (= l1 l1) (= l1 l0)) )
(assert (not (= l1 Nil)) )
(check-sat)