
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
(assert (= l3 Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (= l0 l3) (= l0 Nil)) )
(assert (not (is-Nil l3)) )
(assert (= l1 Nil) )
(assert (or (= l3 l2) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil l2)) )
(check-sat)
