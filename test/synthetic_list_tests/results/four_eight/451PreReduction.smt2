
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
(assert (is-Nil l2) )
(assert (and (= l3 Nil) (= l3 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Nil l0)) )
(assert (= l0 l0) )
(check-sat)
