
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
(assert (= l3 l2) )
(assert (or (= l3 l1) (= l2 l0) (= l2 Nil) (= l0 l2)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l1 l0) (= l2 Nil) (= l1 l0) (= l3 l0)) )
(assert (not (= l3 l2)) )
(assert (or (is-Nil Nil) (= l0 l0) (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(check-sat)
