
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
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (not (= l2 l3)) )
(assert (= l3 l0) )
(assert (is-Cons l2) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (= l1 l1)) )
(check-sat)
