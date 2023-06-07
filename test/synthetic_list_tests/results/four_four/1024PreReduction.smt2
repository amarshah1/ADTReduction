
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
(assert (or (= l3 l2) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (or (= l2 l2) (= l2 Nil) (= l2 Nil)) )
(check-sat)
