
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
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (and (= l3 Nil) (= l2 l3) (is-Nil Nil)) )
(assert (= l0 l2) )
(assert (or (= l3 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l2) (= l2 l2)) )
(assert (and (is-Nil Nil) (is-Cons l0) (= l0 Nil)) )
(check-sat)
