
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
(assert (and (= l0 l2) (is-Cons Nil) (= l1 Nil)) )
(assert (or (= l1 l1) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
