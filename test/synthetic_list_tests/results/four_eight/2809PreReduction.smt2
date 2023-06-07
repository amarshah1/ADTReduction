
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
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (not (is-Cons l3)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
