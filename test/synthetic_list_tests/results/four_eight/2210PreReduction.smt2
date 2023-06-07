
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
(assert (or (= l1 Nil) (= l3 l0) (= l0 l1) (= l3 l3)) )
(assert (is-Nil l3) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons l0) (= l3 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
