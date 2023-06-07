
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
(assert (and (= l2 Nil) (is-Nil l1) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(check-sat)