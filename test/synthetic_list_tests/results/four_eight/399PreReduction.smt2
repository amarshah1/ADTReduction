
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
(assert (and (= l3 Nil) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l1 l0) (= l1 l2) (= l3 l3)) )
(assert (or (= l3 l0) (= l0 l0) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
