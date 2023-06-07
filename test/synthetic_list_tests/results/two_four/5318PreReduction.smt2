
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
(assert (and (= l1 Nil) (is-Cons Nil) (= l1 l1) (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (= l1 l0) )
(assert (not (is-Nil Nil)) )
(check-sat)
