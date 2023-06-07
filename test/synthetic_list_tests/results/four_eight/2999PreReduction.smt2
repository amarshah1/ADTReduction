
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
(assert (= l2 l2) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l0 Nil) (= l0 l0) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l3)) )
(assert (or (= l2 Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(check-sat)
