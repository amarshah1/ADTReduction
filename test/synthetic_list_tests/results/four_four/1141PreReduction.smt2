
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
(assert (or (= l0 Nil) (= l3 l3)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l2 Nil) )
(check-sat)
