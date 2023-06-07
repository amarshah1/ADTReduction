
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
(assert (or (= l3 l3) (= l1 Nil)) )
(assert (not (= l3 l2)) )
(assert (is-Cons l0) )
(assert (and (= l0 Nil) (is-Nil l2) (is-Nil Nil)) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l2 l2) (= l3 l3)) )
(check-sat)
