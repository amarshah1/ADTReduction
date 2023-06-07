
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
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (not (= l3 l0)) )
(assert (is-Cons l0) )
(assert (= l3 l0) )
(check-sat)
