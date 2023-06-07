
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
(assert (= l1 Nil) )
(assert (and (= l1 l1) (is-Cons Nil) (is-Nil l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l1) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(check-sat)
