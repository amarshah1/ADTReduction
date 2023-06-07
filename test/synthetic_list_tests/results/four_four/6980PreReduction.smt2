
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l2 l1) (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil l0) (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
