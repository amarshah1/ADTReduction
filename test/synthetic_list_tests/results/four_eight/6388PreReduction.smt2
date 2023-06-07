
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
(assert (or (= l2 Nil) (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (and (is-Cons l0) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 l3) (= l1 l3)) )
(assert (= l0 l1) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l1 l3) (= l1 l2) (= l1 l2)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(check-sat)
