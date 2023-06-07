
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
(assert (and (= l3 Nil) (is-Cons l0) (= l1 l1) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)