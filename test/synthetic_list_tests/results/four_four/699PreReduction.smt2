
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
(assert (is-Nil Nil) )
(assert (or (= l1 l0) (= l3 Nil) (is-Nil l3) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 l2) (= l3 Nil)) )
(check-sat)
