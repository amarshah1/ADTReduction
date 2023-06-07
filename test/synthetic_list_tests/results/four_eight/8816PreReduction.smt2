
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
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l0 l1) (= l2 l1) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l1 l3) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l2 l3) (= l2 l3)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 l1) (= l2 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (or (is-Cons l2) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l1 l2) (is-Nil Nil)) )
(check-sat)
