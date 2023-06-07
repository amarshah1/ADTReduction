
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
(assert (= l2 l0) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons l2)) )
(assert (is-Cons l2) )
(assert (= l2 Nil) )
(check-sat)
