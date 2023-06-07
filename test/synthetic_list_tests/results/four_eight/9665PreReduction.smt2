
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
(assert (or (= l2 l3) (= l0 l2)) )
(assert (not (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l2) (= l0 l0) (= l2 Nil)) )
(check-sat)
