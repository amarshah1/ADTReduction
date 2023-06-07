
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
(assert (not (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (or (is-Cons l0) (= l0 Nil) (= l0 l1) (= l0 l3)) )
(assert (or (= l0 l2) (= l3 l2) (= l1 Nil) (= l1 l0)) )
(check-sat)
