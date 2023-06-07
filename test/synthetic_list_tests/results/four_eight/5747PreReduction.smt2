
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
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (= l0 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l0 l1) (= l2 Nil)) )
(assert (= l0 l3) )
(assert (= l3 Nil) )
(assert (and (= l2 l1) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)