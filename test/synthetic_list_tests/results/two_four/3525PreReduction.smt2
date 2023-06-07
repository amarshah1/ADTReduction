
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
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l0 l0) (= l1 Nil) (is-Nil Nil) (is-Cons l0)) )
(check-sat)
