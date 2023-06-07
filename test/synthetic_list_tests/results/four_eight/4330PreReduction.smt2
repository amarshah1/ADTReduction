
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
(assert (and (= l2 l1) (= l3 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l1 l0) (= l0 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l2 l2) (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l0 l2) (= l0 l2) (is-Nil Nil) (= l2 l2)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
