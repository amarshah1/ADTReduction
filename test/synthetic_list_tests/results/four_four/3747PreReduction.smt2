
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
(assert (or (is-Nil Nil) (= l3 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons l1) )
(assert (not (= l0 l2)) )
(check-sat)
