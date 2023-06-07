
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
(assert (not (is-Cons l1)) )
(assert (is-Nil l0) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l3 l3)) )
(assert (or (= l3 l0) (= l3 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (and (= l2 l2) (= l1 Nil) (= l2 l2)) )
(check-sat)
