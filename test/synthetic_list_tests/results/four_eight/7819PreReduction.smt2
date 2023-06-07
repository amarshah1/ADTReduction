
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
(assert (= l0 Nil) )
(assert (or (= l3 l0) (is-Nil l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil l3)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l0 l1) (= l3 Nil) (is-Cons l2)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l2) (= l0 Nil)) )
(check-sat)
