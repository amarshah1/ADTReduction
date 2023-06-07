
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
(assert (and (= l0 l1) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l0 l3)) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 l0) (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
