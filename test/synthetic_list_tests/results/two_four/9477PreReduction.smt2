
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
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(check-sat)
