
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
(assert (or (= l3 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l2 l2) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l3) )
(check-sat)
