
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
(assert (not (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Nil l0) (is-Nil l3)) )
(assert (or (= l0 l0) (= l2 l3)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l2 l0)) )
(assert (is-Nil l0) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Cons l0)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(check-sat)