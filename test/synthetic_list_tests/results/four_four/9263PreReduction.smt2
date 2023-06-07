
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
(assert (and (= l3 Nil) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l2 l2) )
(assert (= l0 l2) )
(check-sat)
