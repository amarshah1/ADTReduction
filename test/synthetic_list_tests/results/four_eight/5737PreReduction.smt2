
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
(assert (and (is-Cons l0) (= l2 Nil)) )
(assert (and (= l0 l1) (= l2 Nil)) )
(assert (= l2 l3) )
(assert (= l0 l0) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l0 l2) (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l0 l0) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
