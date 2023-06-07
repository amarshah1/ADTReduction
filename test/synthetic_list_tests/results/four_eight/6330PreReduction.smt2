
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
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 l1) (= l1 l1)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l3 l0) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l3 l3)) )
(check-sat)
