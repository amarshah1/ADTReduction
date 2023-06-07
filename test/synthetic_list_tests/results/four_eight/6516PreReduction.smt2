
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
(assert (is-Nil l1) )
(assert (and (is-Cons Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l2) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (or (= l2 l0) (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
