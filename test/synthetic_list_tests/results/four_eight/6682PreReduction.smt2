
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
(assert (= l2 Nil) )
(assert (and (= l1 l0) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (or (= l2 l3) (= l2 l0) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Nil l3) (= l2 Nil) (= l0 l1)) )
(assert (or (is-Nil Nil) (is-Nil l3)) )
(assert (= l3 Nil) )
(check-sat)
