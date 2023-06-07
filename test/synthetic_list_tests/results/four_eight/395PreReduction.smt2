
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
(assert (not (is-Nil l0)) )
(assert (= l0 l1) )
(assert (is-Nil Nil) )
(assert (= l0 l2) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l1 l3)) )
(assert (or (= l0 Nil) (= l1 l2) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons l1)) )
(check-sat)
