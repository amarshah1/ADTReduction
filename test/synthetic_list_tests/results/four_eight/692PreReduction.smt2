
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
(assert (not (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l2 l3) (= l1 l0) (= l0 l2)) )
(assert (and (is-Cons l2) (is-Cons l2)) )
(assert (and (= l1 l1) (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (or (= l3 l3) (= l0 l0) (is-Nil l3)) )
(assert (= l2 Nil) )
(check-sat)
