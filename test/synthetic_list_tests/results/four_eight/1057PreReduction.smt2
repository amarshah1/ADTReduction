
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
(assert (not (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l3 l3) )
(assert (and (= l1 l3) (= l3 l3)) )
(assert (= l0 l3) )
(assert (not (= l1 l3)) )
(check-sat)
