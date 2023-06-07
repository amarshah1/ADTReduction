
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
(assert (= l2 l2) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l0) (= l3 l2) (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Nil l1)) )
(assert (and (= l2 l3) (is-Nil l3)) )
(assert (not (= l2 Nil)) )
(check-sat)
