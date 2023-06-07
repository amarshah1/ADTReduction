
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
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l3 l0) (is-Cons l3)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l2 l2)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l1) (is-Nil Nil)) )
(assert (and (is-Cons l0) (= l2 Nil) (= l2 l1)) )
(check-sat)
