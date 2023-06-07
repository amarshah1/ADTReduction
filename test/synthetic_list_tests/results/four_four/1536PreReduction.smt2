
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
(assert (is-Nil l2) )
(assert (or (is-Nil Nil) (= l2 l0) (= l0 l0)) )
(assert (or (is-Cons Nil) (is-Cons l1) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil l1) )
(check-sat)
