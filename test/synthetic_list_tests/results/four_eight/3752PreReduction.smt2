
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
(assert (or (is-Nil Nil) (= l3 Nil) (= l0 l2)) )
(assert (= l1 Nil) )
(assert (and (is-Nil l2) (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (= l3 l0) )
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(check-sat)
