
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
(assert (not (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l1) (= l1 Nil) (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l0 l1) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
