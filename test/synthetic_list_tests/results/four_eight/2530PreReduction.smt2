
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
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l2 l0) (= l2 Nil) (= l1 l1)) )
(assert (or (= l1 Nil) (is-Nil l3) (is-Nil l1)) )
(assert (or (is-Nil Nil) (= l0 l3) (= l2 Nil) (= l0 l3)) )
(assert (= l2 Nil) )
(assert (not (is-Nil l3)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l0 l0) (is-Cons l3)) )
(check-sat)
