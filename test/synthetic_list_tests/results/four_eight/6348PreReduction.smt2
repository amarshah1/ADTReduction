
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
(assert (and (= l0 l0) (is-Nil Nil) (is-Cons l3) (= l3 l1)) )
(assert (= l2 Nil) )
(assert (not (is-Cons l1)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (is-Nil l2) )
(check-sat)