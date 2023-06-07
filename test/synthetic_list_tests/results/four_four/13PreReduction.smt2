
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
(assert (and (= l3 Nil) (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l3) (is-Nil Nil) (is-Nil Nil) (= l2 l0)) )
(assert (is-Cons Nil) )
(check-sat)
