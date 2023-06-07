
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
(assert (is-Nil l1) )
(assert (and (= l2 l0) (= l0 Nil)) )
(assert (not (= l0 l0)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (= l2 l0) )
(assert (or (= l0 Nil) (= l1 l1)) )
(assert (or (is-Nil l3) (= l1 Nil) (= l0 l3)) )
(check-sat)
