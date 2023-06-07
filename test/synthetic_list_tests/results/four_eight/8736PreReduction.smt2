
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
(assert (and (= l0 l1) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Cons l1) (= l0 l0) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l3 Nil) )
(check-sat)
