
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
(assert (and (= l0 Nil) (= l2 l1) (= l0 Nil) (= l3 Nil)) )
(assert (not (= l3 l3)) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
