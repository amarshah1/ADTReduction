
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
(assert (is-Nil l1) )
(assert (or (= l0 l1) (is-Cons Nil) (is-Cons l3)) )
(assert (or (is-Nil Nil) (is-Cons l3) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (and (= l0 l1) (= l0 l2)) )
(assert (and (= l1 l0) (is-Nil l3) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l3 l1) (= l1 Nil)) )
(check-sat)