
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
(assert (and (= l2 l0) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (and (= l1 l1) (= l2 l2)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 l1)) )
(assert (and (is-Nil Nil) (is-Cons l0) (= l1 l2) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (= l2 Nil) )
(assert (or (= l3 l0) (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
