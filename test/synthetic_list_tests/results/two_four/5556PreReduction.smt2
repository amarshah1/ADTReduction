
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
(assert (and (= l0 Nil) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (= l0 l1) )
(assert (is-Nil l1) )
(assert (not (= l0 l0)) )
(check-sat)
