
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
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Nil l3)) )
(assert (is-Nil l0) )
(assert (not (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l2) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
