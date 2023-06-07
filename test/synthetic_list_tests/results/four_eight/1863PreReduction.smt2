
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
(assert (or (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil l0) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
