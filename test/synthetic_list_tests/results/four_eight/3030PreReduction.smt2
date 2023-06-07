
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
(assert (or (= l2 l2) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons l0) )
(assert (= l2 Nil) )
(assert (not (= l3 l3)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l2 l0) (= l2 Nil)) )
(assert (and (= l3 l3) (= l2 Nil)) )
(check-sat)
