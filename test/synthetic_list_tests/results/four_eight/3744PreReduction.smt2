
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
(assert (is-Nil l3) )
(assert (or (= l1 l1) (= l3 l2) (= l0 l0) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (and (= l2 Nil) (= l1 l2) (is-Nil l1) (is-Cons l0)) )
(assert (or (is-Nil l2) (= l3 Nil) (= l1 Nil)) )
(assert (or (= l3 l0) (= l2 l3)) )
(assert (not (is-Nil Nil)) )
(check-sat)
