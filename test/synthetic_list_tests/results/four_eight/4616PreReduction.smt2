
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
(assert (= l1 l0) )
(assert (or (is-Nil l1) (= l1 Nil)) )
(assert (and (is-Nil l1) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (is-Nil l0) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)