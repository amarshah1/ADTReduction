
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
(assert (and (= l2 l0) (= l1 Nil) (= l0 l1)) )
(assert (is-Cons l0) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l2 l0) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil)) )
(check-sat)