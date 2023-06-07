
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
(assert (and (= l2 l2) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l2) (= l3 l3) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (= l1 l0) )
(assert (= l3 Nil) )
(assert (and (= l1 l1) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(check-sat)
