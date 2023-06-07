
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
(assert (or (= l1 Nil) (= l0 l0) (is-Nil Nil) (= l1 l3)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l0 l3)) )
(assert (and (is-Cons l0) (= l1 l1) (is-Nil Nil) (is-Nil l3)) )
(assert (or (= l1 l1) (= l1 l3)) )
(assert (is-Cons l3) )
(assert (not (= l3 Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Nil l1) (= l3 Nil)) )
(assert (or (= l3 l2) (= l2 Nil) (= l1 Nil)) )
(check-sat)
