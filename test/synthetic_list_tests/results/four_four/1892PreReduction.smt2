
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
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 l0) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(check-sat)
