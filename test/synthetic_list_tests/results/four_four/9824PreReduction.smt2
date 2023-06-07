
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
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l2 l0) (is-Cons Nil)) )
(assert (or (is-Nil l0) (= l2 l1) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)