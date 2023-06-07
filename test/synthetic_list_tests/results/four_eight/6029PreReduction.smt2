
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
(assert (and (= l2 l2) (= l0 l3) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 l0) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l1 l2)) )
(assert (= l2 l2) )
(assert (and (= l0 l3) (= l0 l2)) )
(assert (or (= l3 Nil) (is-Cons l0) (= l0 Nil)) )
(assert (is-Nil l1) )
(check-sat)
