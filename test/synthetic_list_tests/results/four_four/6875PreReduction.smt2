
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
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)