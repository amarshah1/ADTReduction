
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
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (is-Cons l2) )
(assert (and (= l1 l3) (= l2 l3) (= l0 l1) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(check-sat)
