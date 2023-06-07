
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
(assert (or (= l3 Nil) (= l1 l3) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (= l0 l3) )
(assert (= l3 l3) )
(assert (= l0 l1) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (= l2 Nil) )
(check-sat)
