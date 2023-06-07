
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
(assert (or (is-Nil l0) (= l3 Nil) (= l3 Nil)) )
(assert (or (= l1 l2) (= l0 Nil) (= l1 Nil) (is-Cons l2)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l3)) )
(assert (or (is-Nil l2) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)