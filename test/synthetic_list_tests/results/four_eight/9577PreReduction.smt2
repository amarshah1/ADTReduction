
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
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l2) (is-Nil l3) (is-Nil l1) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
