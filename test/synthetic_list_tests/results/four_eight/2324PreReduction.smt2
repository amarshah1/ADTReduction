
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
(assert (is-Nil l0) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Nil l0) (= l2 l3)) )
(assert (is-Nil l1) )
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
