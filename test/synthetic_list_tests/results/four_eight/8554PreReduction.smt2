
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
(assert (or (= l0 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l1 l1)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l2 Nil) (is-Nil l2)) )
(assert (or (= l1 Nil) (= l1 l0) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l1 l2) (= l3 l3) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l1) )
(assert (and (= l3 l0) (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(check-sat)
