
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
(assert (or (= l0 Nil) (= l1 l0) (= l2 Nil)) )
(assert (or (= l1 l0) (is-Cons l3) (is-Nil Nil) (is-Cons l0)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(check-sat)
