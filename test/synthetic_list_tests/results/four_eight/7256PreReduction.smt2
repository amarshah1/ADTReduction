
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l1) (is-Nil Nil) (= l2 l1) (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l0 l0) (= l2 l0)) )
(check-sat)
