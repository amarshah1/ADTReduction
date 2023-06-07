
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
(assert (or (= l1 Nil) (is-Nil Nil) (is-Nil Nil) (is-Cons l3)) )
(assert (= l2 Nil) )
(assert (and (= l1 l2) (= l0 Nil)) )
(assert (not (= l2 l3)) )
(assert (= l3 Nil) )
(assert (is-Nil l2) )
(assert (is-Nil l2) )
(assert (or (= l1 l2) (= l3 Nil) (= l0 l1) (= l2 l0)) )
(check-sat)
