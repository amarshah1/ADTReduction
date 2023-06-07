
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
(assert (is-Nil l0) )
(assert (is-Cons l0) )
(assert (not (= l1 l0)) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l2 l3)) )
(assert (is-Cons l2) )
(check-sat)