
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
(assert (or (= l0 l2) (is-Nil l1)) )
(assert (and (is-Nil Nil) (is-Cons l0)) )
(assert (not (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l2 l0) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (is-Nil l3) )
(check-sat)
