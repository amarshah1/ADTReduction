
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
(assert (and (is-Nil Nil) (= l1 l1) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil l3) (= l3 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l0 l3) (= l0 l2) (= l0 Nil)) )
(assert (= l2 l0) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil l0)) )
(check-sat)
