
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
(assert (or (= l3 l0) (= l3 l2) (is-Cons l2) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (= l0 l3) (= l3 l1) (= l1 l0)) )
(assert (is-Cons Nil) )
(assert (and (= l0 l2) (is-Cons Nil) (is-Nil Nil)) )
(assert (= l0 l1) )
(assert (= l0 l0) )
(assert (not (= l0 Nil)) )
(check-sat)
