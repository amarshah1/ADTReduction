
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
(assert (not (is-Nil Nil)) )
(assert (not (= l3 l1)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 l2) (= l0 Nil) (= l2 Nil)) )
(assert (= l2 l1) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(check-sat)
