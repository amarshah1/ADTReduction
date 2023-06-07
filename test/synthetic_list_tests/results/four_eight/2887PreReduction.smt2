
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
(assert (not (= l3 Nil)) )
(assert (and (= l1 l1) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l3 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
