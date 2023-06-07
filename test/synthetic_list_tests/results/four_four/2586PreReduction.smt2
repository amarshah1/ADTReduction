
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
(assert (and (= l3 l0) (= l1 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l3 l3) (= l2 l0)) )
(assert (is-Nil Nil) )
(check-sat)
