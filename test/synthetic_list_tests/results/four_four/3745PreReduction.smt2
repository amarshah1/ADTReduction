
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
(assert (or (= l2 Nil) (= l3 Nil) (is-Cons l0) (= l0 Nil)) )
(assert (or (= l1 l2) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l1 l0)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
