
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
(assert (not (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l0 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l1 l0) (= l0 Nil) (= l2 Nil)) )
(assert (and (= l0 l3) (= l0 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l0) )
(assert (is-Nil l2) )
(check-sat)
