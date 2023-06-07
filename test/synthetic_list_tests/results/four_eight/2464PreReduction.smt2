
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
(assert (or (is-Cons Nil) (is-Nil l0) (is-Nil l1)) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(check-sat)
