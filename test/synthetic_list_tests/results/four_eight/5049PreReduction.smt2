
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
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 l2) (is-Cons Nil)) )
(assert (and (= l2 l2) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
