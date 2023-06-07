
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
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l2)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
