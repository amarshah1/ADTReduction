
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
(assert (is-Cons l0) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil l0) )
(assert (or (= l1 l0) (= l2 l0) (= l1 l0) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l2 l3) (= l1 Nil)) )
(check-sat)
