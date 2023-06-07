
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
(assert (or (is-Nil l0) (is-Nil Nil)) )
(assert (not (= l0 l0)) )
(assert (is-Nil l2) )
(assert (is-Cons l2) )
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 l1) (is-Nil l2)) )
(check-sat)