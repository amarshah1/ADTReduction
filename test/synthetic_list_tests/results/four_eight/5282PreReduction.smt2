
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
(assert (or (= l2 Nil) (= l2 Nil) (= l2 Nil) (= l0 l0)) )
(assert (and (= l1 l3) (= l1 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 l2) (= l3 l1) (is-Cons l2) (= l1 l3)) )
(assert (= l1 l0) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l0 l0) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons l3) (= l3 Nil)) )
(check-sat)
