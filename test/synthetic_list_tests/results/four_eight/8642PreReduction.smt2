
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
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (= l2 l0)) )
(assert (not (= l3 l3)) )
(assert (is-Nil l1) )
(assert (is-Cons l2) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(check-sat)