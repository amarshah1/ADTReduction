
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
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l2 l1) (is-Nil l2) (is-Nil Nil)) )
(assert (and (is-Nil l2) (= l0 Nil) (is-Nil l1) (= l0 Nil)) )
(assert (or (is-Cons l2) (= l3 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (not (= l2 l0)) )
(assert (not (= l3 Nil)) )
(assert (= l0 l3) )
(check-sat)
