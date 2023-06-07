
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
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l0 l1) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l2 l2) (= l0 Nil)) )
(assert (= l2 Nil) )
(check-sat)
