
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
(assert (= l0 l2) )
(assert (= l2 Nil) )
(assert (and (= l3 l0) (= l3 l1)) )
(assert (and (= l2 l2) (is-Nil Nil)) )
(assert (= l1 l2) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
