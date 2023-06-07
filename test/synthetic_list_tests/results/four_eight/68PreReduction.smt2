
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
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l0 Nil) (is-Nil l3)) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (= l1 l3)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 Nil)) )
(check-sat)
