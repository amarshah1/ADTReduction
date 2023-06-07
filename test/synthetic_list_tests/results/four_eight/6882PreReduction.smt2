
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
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (or (= l2 l1) (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l2 l3)) )
(assert (or (= l0 l1) (= l3 l1)) )
(assert (is-Nil Nil) )
(check-sat)
