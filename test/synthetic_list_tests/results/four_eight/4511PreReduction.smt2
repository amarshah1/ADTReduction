
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
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l2 l2) (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (not (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)