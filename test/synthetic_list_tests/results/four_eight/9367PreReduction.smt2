
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
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (= l2 l2) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l0 l1)) )
(assert (= l2 l0) )
(check-sat)
