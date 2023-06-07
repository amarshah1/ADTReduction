
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
(assert (= l3 Nil) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l0) (= l1 l1) (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l2) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
