
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
(assert (is-Cons l3) )
(assert (not (= l3 l2)) )
(assert (is-Nil l3) )
(assert (= l2 l2) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
