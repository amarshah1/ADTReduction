
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
(assert (is-Nil Nil) )
(assert (or (= l0 l0) (= l1 Nil)) )
(assert (and (is-Nil l1) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
