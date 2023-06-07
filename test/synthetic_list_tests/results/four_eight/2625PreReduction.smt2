
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
(assert (is-Cons l2) )
(assert (= l0 Nil) )
(assert (is-Nil l3) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (not (= l0 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
