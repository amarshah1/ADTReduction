
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
(assert (not (= l3 Nil)) )
(assert (and (= l2 Nil) (= l0 l2) (is-Nil Nil) (= l2 l3)) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Nil l2) (= l0 l0) (= l0 l2)) )
(assert (or (= l1 Nil) (= l3 l1)) )
(assert (and (is-Nil l3) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
