
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
(assert (and (= l3 l3) (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Nil l0) (= l3 Nil) (is-Nil l2)) )
(assert (and (= l2 Nil) (is-Cons l1) (is-Cons l1) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l3) )
(check-sat)
