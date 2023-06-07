
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
(assert (and (= l1 l0) (is-Cons Nil) (= l0 l0) (= l1 Nil)) )
(assert (or (is-Cons l1) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(check-sat)
