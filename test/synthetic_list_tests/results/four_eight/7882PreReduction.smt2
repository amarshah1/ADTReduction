
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
(assert (or (is-Cons l0) (is-Nil Nil) (= l1 l2)) )
(assert (not (= l0 l0)) )
(assert (and (= l3 Nil) (= l2 l3)) )
(assert (is-Cons l2) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (is-Nil l0) )
(check-sat)
