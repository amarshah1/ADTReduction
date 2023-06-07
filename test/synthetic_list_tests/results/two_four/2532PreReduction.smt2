
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
(assert (and (is-Cons l1) (= l1 l0) (is-Cons Nil) (is-Cons l1)) )
(assert (= l1 l0) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(check-sat)
