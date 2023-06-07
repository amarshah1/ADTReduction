
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
(assert (or (= l2 Nil) (= l2 l0) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l3 l0) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l2 l1)) )
(assert (and (= l0 l0) (is-Cons l3) (= l1 l2)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l2 l1)) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Nil Nil)) )
(check-sat)
