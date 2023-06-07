
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
(assert (or (= l0 Nil) (= l1 l0)) )
(assert (or (= l1 Nil) (= l1 l3)) )
(assert (and (= l2 l1) (is-Nil Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (is-Nil l1) )
(check-sat)
