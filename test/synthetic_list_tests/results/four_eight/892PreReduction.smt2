
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
(assert (not (= l3 Nil)) )
(assert (= l2 l2) )
(assert (= l1 Nil) )
(assert (and (= l0 l3) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
