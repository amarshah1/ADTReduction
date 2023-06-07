
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
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(assert (not (= l2 l3)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (is-Nil l3) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l2) (is-Nil l0)) )
(check-sat)
