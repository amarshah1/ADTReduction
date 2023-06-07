
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
(assert (or (= l0 l3) (= l2 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l3 l3) (= l3 l0) (is-Cons Nil)) )
(check-sat)
