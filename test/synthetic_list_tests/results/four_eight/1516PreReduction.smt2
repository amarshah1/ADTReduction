
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
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 l0) (= l3 Nil) (= l1 Nil)) )
(assert (= l1 l0) )
(assert (= l1 Nil) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)