
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
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (= l1 l2) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l3 l3) )
(assert (and (= l3 l3) (= l0 l0) (= l3 Nil) (= l3 l2)) )
(check-sat)
