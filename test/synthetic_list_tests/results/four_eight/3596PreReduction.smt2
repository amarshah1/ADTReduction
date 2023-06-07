
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
(assert (is-Nil Nil) )
(assert (or (is-Cons l2) (= l1 Nil) (= l1 l1) (= l1 l3)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 l1) (= l1 l0) (is-Cons l3) (= l3 Nil)) )
(check-sat)
