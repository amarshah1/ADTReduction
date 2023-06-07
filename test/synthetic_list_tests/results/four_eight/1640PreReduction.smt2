
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
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l3 l3)) )
(assert (= l2 l0) )
(assert (and (= l2 Nil) (= l1 l2) (= l1 l2) (is-Cons l3)) )
(assert (and (= l1 l0) (is-Cons l1) (= l0 l2)) )
(assert (not (= l2 Nil)) )
(assert (not (= l2 l0)) )
(check-sat)
