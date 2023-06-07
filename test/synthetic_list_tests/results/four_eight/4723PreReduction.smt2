
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
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l1 l0) (= l2 l0)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l0 l3) (= l0 l2)) )
(assert (= l1 Nil) )
(assert (and (= l3 l2) (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l3) (= l2 Nil)) )
(assert (= l1 Nil) )
(check-sat)
