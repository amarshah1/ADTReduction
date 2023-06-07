
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
(assert (or (= l0 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 l1) (= l0 l2)) )
(assert (is-Nil l0) )
(assert (not (= l3 l0)) )
(assert (is-Nil l2) )
(assert (not (is-Nil Nil)) )
(check-sat)
