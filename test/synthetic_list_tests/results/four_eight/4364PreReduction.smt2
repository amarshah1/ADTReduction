
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
(assert (and (= l3 l2) (= l3 l0)) )
(assert (or (= l1 l1) (= l0 Nil)) )
(assert (not (is-Nil l2)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (or (is-Nil l2) (is-Cons l0)) )
(assert (is-Nil Nil) )
(check-sat)
