
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
(assert (not (= l3 l3)) )
(assert (= l2 Nil) )
(assert (not (is-Cons l1)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
