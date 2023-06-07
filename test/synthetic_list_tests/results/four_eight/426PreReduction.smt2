
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
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (= l0 Nil) )
(assert (and (= l3 l0) (is-Cons l3) (= l3 Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (not (= l0 l3)) )
(assert (is-Cons l0) )
(check-sat)