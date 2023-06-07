
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
(assert (is-Cons l0) )
(assert (or (= l3 l2) (= l3 l0) (is-Nil Nil)) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Cons l3)) )
(check-sat)
