
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
(assert (not (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l0 l3) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (and (= l0 l3) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (= l1 l3)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(check-sat)
