
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
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (or (is-Cons l1) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (= l0 l3)) )
(assert (not (= l1 l3)) )
(assert (= l1 Nil) )
(check-sat)
