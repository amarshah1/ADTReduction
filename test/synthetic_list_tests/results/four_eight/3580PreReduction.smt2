
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
(assert (or (= l0 l0) (is-Nil l2) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l0 l2) (= l3 l3) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l3 l0)) )
(assert (is-Cons l3) )
(check-sat)
