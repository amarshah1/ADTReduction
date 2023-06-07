
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
(assert (is-Cons Nil) )
(assert (not (= l1 l3)) )
(assert (or (= l1 l2) (= l3 l1) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l0) (= l2 l2) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l2 l3) (= l3 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l2 l0) (= l3 Nil)) )
(check-sat)
