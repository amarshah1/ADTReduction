
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
(assert (= l3 Nil) )
(assert (not (= l3 l1)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l0 l1) (= l2 Nil) (is-Nil l3)) )
(assert (and (= l1 Nil) (= l2 l3) (= l3 l1) (is-Nil l3)) )
(assert (= l2 Nil) )
(check-sat)
