
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
(assert (or (= l3 l3) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l0 l2) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons l1) (= l2 l0)) )
(assert (or (= l2 Nil) (is-Cons l1) (= l0 Nil) (= l3 Nil)) )
(assert (and (is-Nil l3) (is-Nil Nil) (is-Nil l3)) )
(check-sat)