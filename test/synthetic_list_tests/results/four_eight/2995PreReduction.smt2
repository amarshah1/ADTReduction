
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
(assert (and (is-Nil Nil) (= l2 l0) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons l2) (= l0 Nil)) )
(assert (or (= l1 l3) (= l2 l1) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (or (= l2 l3) (= l0 l1) (is-Cons Nil) (= l3 l3)) )
(check-sat)
