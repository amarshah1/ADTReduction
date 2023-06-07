
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
(assert (or (= l2 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(check-sat)
