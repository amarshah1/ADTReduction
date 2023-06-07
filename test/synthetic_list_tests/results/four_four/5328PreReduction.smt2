
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
(assert (and (= l1 Nil) (= l3 l1) (= l1 l1) (= l1 l2)) )
(assert (= l1 Nil) )
(assert (and (is-Nil l0) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l2 Nil) (= l0 l3)) )
(check-sat)
