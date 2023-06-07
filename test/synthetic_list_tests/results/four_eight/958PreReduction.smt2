
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
(assert (or (= l3 l2) (= l0 Nil)) )
(assert (not (= l0 l2)) )
(assert (= l2 l3) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (and (= l0 l2) (= l2 l2)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil l2) )
(check-sat)
