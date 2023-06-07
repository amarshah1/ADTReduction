
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
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (and (= l3 l2) (= l2 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (and (= l2 l1) (= l0 Nil) (is-Nil l2)) )
(assert (or (= l0 l1) (is-Nil l0) (= l3 l0)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
