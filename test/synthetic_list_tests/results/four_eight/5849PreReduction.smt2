
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
(assert (and (is-Nil l3) (is-Cons l2) (= l0 Nil) (= l3 Nil)) )
(assert (or (= l3 l0) (is-Nil l1) (= l1 l1) (is-Nil l1)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l2 l0)) )
(assert (and (= l1 Nil) (= l3 l3) (= l0 l2)) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l2 l0) (= l1 l0) (is-Cons Nil)) )
(check-sat)
