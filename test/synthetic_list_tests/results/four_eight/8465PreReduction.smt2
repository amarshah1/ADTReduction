
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
(assert (is-Cons l2) )
(assert (is-Nil l0) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 l0) (= l3 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
