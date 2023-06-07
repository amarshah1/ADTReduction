
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l3 l0) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l2 l1) (= l0 Nil)) )
(check-sat)
