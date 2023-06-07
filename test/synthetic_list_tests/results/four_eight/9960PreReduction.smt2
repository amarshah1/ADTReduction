
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
(assert (= l1 l2) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l0 l3)) )
(assert (is-Nil l3) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(check-sat)