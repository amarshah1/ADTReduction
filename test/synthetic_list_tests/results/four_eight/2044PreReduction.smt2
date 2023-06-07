
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
(assert (and (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l2 l2) (is-Nil l0) (= l3 l3)) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (is-Cons l2) (= l1 l1)) )
(assert (not (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)