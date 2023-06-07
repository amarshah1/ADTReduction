
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
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil l2) (is-Nil l3)) )
(assert (= l0 Nil) )
(assert (or (is-Cons l3) (is-Cons l2)) )
(assert (and (= l2 Nil) (is-Cons l3) (= l1 l2) (= l3 l0)) )
(assert (is-Nil l2) )
(check-sat)
