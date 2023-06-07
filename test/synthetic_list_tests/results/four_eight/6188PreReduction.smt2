
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
(assert (not (= l3 l2)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 l1) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (= l0 l0)) )
(assert (or (= l1 l0) (= l0 Nil)) )
(assert (and (is-Nil l2) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
