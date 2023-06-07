
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
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (and (= l0 l2) (= l2 l1) (= l2 Nil) (is-Nil l3)) )
(assert (and (= l0 l0) (= l3 Nil) (= l3 l0)) )
(assert (or (is-Cons l1) (is-Nil l0)) )
(assert (and (= l0 l0) (= l0 Nil) (= l0 l1)) )
(assert (not (= l0 Nil)) )
(check-sat)
