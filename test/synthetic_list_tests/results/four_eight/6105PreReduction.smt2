
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
(assert (is-Nil Nil) )
(assert (and (is-Cons l3) (= l3 l1) (= l2 Nil)) )
(assert (and (is-Nil l0) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Cons l0) (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l1 l0) (= l3 l0) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l1 Nil) (= l1 Nil) (= l2 Nil)) )
(check-sat)
