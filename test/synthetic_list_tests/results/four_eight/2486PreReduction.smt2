
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
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (= l2 Nil)) )
(assert (and (= l2 l0) (= l3 l1) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 l2) (= l2 l2) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 l1)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
