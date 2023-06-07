
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
(assert (is-Nil l1) )
(assert (and (is-Nil l0) (= l3 l0) (= l2 l3) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l2 l0)) )
(assert (and (= l1 l0) (is-Nil Nil)) )
(assert (not (= l1 l0)) )
(assert (= l1 Nil) )
(assert (and (= l2 l0) (= l2 Nil) (is-Cons l2) (= l3 Nil)) )
(check-sat)
