
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
(assert (or (= l0 l0) (is-Cons Nil) (= l2 l3)) )
(assert (not (is-Cons l1)) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l1 l2) (= l2 l2)) )
(assert (or (= l2 l1) (= l1 Nil) (is-Cons l2)) )
(assert (and (is-Nil l3) (= l1 Nil)) )
(check-sat)
