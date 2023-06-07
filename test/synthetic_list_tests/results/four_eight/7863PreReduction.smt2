
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
(assert (or (is-Nil Nil) (= l2 l3)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l2 l3)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons l1) (= l3 l1)) )
(assert (= l2 Nil) )
(assert (and (= l3 l1) (is-Nil Nil) (= l0 l1)) )
(assert (is-Nil l0) )
(check-sat)
