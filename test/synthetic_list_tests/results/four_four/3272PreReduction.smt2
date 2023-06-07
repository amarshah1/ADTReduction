
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
(assert (and (is-Cons l2) (is-Cons l2)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
