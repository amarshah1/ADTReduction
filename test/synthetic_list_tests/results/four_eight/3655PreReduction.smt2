
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
(assert (is-Nil l1) )
(assert (= l3 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (= l3 l1)) )
(assert (= l2 l2) )
(check-sat)
