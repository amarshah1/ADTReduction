
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
(assert (and (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(check-sat)
