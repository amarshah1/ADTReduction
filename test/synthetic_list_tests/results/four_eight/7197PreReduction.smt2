
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
(assert (is-Cons l1) )
(assert (= l2 Nil) )
(assert (and (= l0 l0) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l1 l1)) )
(assert (and (= l0 Nil) (is-Nil l1) (= l0 l0) (= l0 l3)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (and (is-Cons l3) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(check-sat)