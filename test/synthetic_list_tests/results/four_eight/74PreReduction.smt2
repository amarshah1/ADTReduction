
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
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (or (= l1 l1) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Cons l3)) )
(assert (is-Cons l0) )
(assert (is-Cons l1) )
(check-sat)
