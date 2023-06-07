
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
(assert (or (= l3 Nil) (= l0 Nil) (= l0 l1) (is-Cons l0)) )
(assert (and (= l3 Nil) (= l2 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l3 l1) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (not (= l1 l3)) )
(assert (or (= l0 l3) (= l0 Nil) (= l1 l3)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l2 l3) (= l2 l0)) )
(check-sat)
