
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
(assert (= l3 l2) )
(assert (and (is-Nil Nil) (= l0 l2) (is-Cons l3)) )
(assert (and (is-Cons l3) (is-Nil l2) (= l0 Nil)) )
(check-sat)
