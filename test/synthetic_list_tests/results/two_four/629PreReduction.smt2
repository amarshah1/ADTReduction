
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
