
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
(assert (and (is-Nil l2) (= l2 l0) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (is-Nil l2) )
(assert (not (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)
