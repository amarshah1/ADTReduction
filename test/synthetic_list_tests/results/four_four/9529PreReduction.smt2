
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
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l2 Nil) (= l2 l2) (= l0 l2) (is-Nil Nil)) )
(assert (or (is-Cons l3) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)