
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l2 l0) (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l1) (= l3 l2) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l2 l3)) )
(assert (not (is-Nil Nil)) )
(check-sat)
