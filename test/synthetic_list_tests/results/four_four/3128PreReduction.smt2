
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
(assert (or (= l2 l0) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons l2) (= l2 l3)) )
(assert (not (is-Nil l0)) )
(check-sat)
