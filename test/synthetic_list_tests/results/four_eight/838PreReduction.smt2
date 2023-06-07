
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
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l0) )
(assert (and (= l2 Nil) (= l2 l0) (= l0 l0)) )
(assert (or (= l0 l2) (is-Nil l2) (is-Nil Nil)) )
(check-sat)
