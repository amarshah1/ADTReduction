
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
(assert (or (= l2 l3) (is-Nil l1)) )
(assert (and (= l1 l2) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l0 l1) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(check-sat)
