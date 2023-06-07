
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
(assert (= l1 l1) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l3 l1) (= l0 l3)) )
(assert (= l3 Nil) )
(assert (or (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (or (= l2 Nil) (= l0 l2)) )
(check-sat)
