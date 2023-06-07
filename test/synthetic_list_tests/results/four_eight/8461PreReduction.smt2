
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
(assert (and (is-Nil l2) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (= l3 l0) )
(assert (is-Cons l1) )
(assert (or (is-Nil l3) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(check-sat)
