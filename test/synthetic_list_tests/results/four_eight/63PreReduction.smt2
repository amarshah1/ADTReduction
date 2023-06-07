
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
(assert (not (is-Nil Nil)) )
(assert (= l1 l2) )
(assert (and (= l1 Nil) (is-Cons l3) (is-Nil Nil) (is-Nil l2)) )
(assert (= l0 Nil) )
(assert (and (= l1 l1) (= l0 l2)) )
(assert (or (is-Nil Nil) (= l3 l1) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l0 l3) (is-Nil l0)) )
(check-sat)
