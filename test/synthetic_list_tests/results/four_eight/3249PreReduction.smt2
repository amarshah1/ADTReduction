
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
(assert (and (is-Cons l0) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l0 l3) (= l3 l3) (= l1 Nil)) )
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l2 l2) (= l3 Nil)) )
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (is-Nil l2) (is-Nil Nil) (is-Cons l1)) )
(check-sat)
