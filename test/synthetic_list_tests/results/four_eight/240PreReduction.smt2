
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
(assert (is-Nil l2) )
(assert (and (= l0 l3) (is-Cons l0) (= l3 l3)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil l3)) )
(assert (not (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l3 Nil)) )
(assert (not (is-Nil l1)) )
(check-sat)
