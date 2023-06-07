
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
(assert (or (is-Cons l1) (= l3 l3) (is-Nil l2) (= l2 Nil)) )
(assert (is-Cons l1) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 Nil) (= l0 Nil)) )
(assert (or (= l1 l0) (is-Cons l3) (= l1 l0) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 l2)) )
(check-sat)
