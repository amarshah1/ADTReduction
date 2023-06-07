
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
(assert (= l1 l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l0) (= l3 l3) (is-Cons l3) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(check-sat)
