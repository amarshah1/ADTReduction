
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
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l0) )
(check-sat)
