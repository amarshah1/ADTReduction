
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
(assert (and (= l2 l2) (= l2 Nil) (= l1 l0) (is-Nil Nil)) )
(assert (and (= l3 l3) (= l3 Nil) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (and (= l1 l1) (= l2 Nil)) )
(assert (and (is-Cons l2) (= l2 l2) (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l0 l0) (is-Nil l2) (= l2 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(check-sat)
