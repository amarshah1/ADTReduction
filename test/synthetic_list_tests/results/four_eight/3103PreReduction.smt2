
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
(assert (= l0 Nil) )
(assert (is-Nil l1) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l2 l0) (= l2 Nil) (= l3 l1) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
