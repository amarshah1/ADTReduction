
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
(assert (or (= l0 l2) (= l1 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l2) (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (= l3 l2) (is-Cons l3) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l1 l0)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l1 Nil)) )
(check-sat)
