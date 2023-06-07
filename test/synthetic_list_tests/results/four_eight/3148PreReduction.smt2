
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
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (or (is-Nil l2) (= l2 l2) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 l3)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(check-sat)
