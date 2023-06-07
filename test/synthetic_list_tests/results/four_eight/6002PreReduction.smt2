
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
(assert (= l0 l0) )
(assert (or (= l1 l1) (= l1 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l1) (= l0 l2) (is-Cons l2)) )
(assert (not (= l0 l1)) )
(assert (or (= l3 Nil) (= l3 l0) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil l3) )
(check-sat)
