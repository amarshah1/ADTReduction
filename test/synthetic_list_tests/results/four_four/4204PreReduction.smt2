
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
(assert (or (is-Nil l2) (is-Cons l2) (is-Nil Nil)) )
(assert (or (= l2 l2) (is-Nil Nil) (= l3 l0) (is-Nil l2)) )
(assert (= l3 l2) )
(assert (is-Nil l3) )
(check-sat)