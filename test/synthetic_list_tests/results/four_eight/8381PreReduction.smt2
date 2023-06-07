
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
(assert (and (= l2 l2) (is-Nil l1) (= l2 l3) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l2 l3) (= l0 l1)) )
(assert (= l2 Nil) )
(check-sat)
