
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
(assert (or (is-Nil l1) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l0) (= l3 l2) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l1 Nil) (is-Cons l3)) )
(assert (or (is-Cons Nil) (is-Cons l0) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
