
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
(assert (not (= l3 Nil)) )
(assert (or (= l1 l1) (= l2 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l0) (= l3 Nil)) )
(check-sat)
