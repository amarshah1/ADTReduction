
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
(assert (or (is-Cons l3) (is-Nil l1) (is-Nil Nil) (is-Nil l0)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l3 l3)) )
(assert (is-Cons l3) )
(check-sat)
