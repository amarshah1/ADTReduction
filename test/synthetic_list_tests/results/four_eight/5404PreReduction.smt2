
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
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l3 l3) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
