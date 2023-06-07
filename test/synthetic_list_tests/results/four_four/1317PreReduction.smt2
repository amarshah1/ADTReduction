
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
(assert (or (is-Nil Nil) (= l0 Nil) (= l3 l1) (= l3 l1)) )
(assert (is-Nil l2) )
(assert (and (= l1 Nil) (is-Nil l0)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(check-sat)
