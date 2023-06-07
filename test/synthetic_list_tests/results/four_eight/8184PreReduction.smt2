
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
(assert (= l1 l2) )
(assert (= l3 Nil) )
(assert (and (is-Nil Nil) (= l3 l3) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l3 l0) (= l2 l3) (is-Nil l2) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 l1) (= l2 Nil)) )
(check-sat)
