
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
(assert (or (= l0 Nil) (= l3 l3) (is-Nil l0) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons l3)) )
(assert (or (is-Cons l1) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (= l2 l0)) )
(assert (not (= l1 l0)) )
(assert (and (is-Nil l2) (= l3 Nil)) )
(assert (= l2 l1) )
(check-sat)
