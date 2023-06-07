
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
(assert (= l1 l1) )
(assert (and (is-Nil l1) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
