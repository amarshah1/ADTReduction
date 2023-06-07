
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
(assert (and (is-Nil l2) (is-Nil Nil)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil l1) (= l3 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l3 l2) (= l0 Nil)) )
(check-sat)
