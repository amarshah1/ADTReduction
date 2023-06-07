
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
(assert (= l0 Nil) )
(assert (and (= l2 l0) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
