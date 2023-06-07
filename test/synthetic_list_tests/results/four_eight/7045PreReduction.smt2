
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
(assert (and (is-Nil l2) (= l3 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (or (= l3 l3) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l1 l2) (= l0 l1) (is-Nil l3)) )
(assert (and (= l0 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (= l2 l1) )
(check-sat)