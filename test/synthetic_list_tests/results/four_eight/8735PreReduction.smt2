
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
(assert (is-Nil l0) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (= l0 Nil) (= l0 l1) (= l2 Nil)) )
(assert (= l1 l0) )
(assert (and (= l1 l0) (is-Nil l0)) )
(check-sat)