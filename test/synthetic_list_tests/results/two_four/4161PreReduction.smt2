
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
(assert (is-Cons l0) )
(assert (and (= l1 l1) (is-Cons Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons l1) )
(check-sat)
