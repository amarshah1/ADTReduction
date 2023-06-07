
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
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l0 l2) (= l2 Nil) (= l2 l2)) )
(assert (is-Cons l0) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l3 l2) (is-Nil l0) (= l0 l1)) )
(assert (or (= l2 l0) (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
