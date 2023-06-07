
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
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)