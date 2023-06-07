
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
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 l0)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (= l1 l1) )
(assert (or (= l3 Nil) (= l0 Nil) (= l0 Nil) (= l0 Nil)) )
(check-sat)
