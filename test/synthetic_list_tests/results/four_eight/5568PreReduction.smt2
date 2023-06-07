
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
(assert (or (= l2 Nil) (= l0 l2) (is-Nil l0) (= l3 l0)) )
(assert (= l0 l3) )
(assert (is-Nil l1) )
(assert (or (= l0 l0) (= l2 l0) (= l3 l0) (= l3 l1)) )
(assert (and (is-Cons l3) (= l0 Nil)) )
(assert (not (is-Nil l1)) )
(assert (= l3 l0) )
(assert (is-Nil Nil) )
(check-sat)