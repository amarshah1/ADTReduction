
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
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l0 l1)) )
(assert (or (is-Nil l1) (= l2 Nil)) )
(check-sat)
