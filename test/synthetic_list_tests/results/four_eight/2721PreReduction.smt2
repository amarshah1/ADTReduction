
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
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil l3) (= l0 Nil) (= l3 l1)) )
(assert (= l2 l0) )
(assert (or (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l0) (= l3 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)