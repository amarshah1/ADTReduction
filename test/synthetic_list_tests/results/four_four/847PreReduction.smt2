
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
(assert (and (= l2 l2) (= l0 Nil) (is-Cons Nil)) )
(assert (= l0 l3) )
(assert (or (is-Nil Nil) (= l3 l1) (is-Nil Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
