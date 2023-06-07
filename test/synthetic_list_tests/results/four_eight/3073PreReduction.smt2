
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
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 l1)) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 l0) (= l2 Nil)) )
(assert (is-Cons l2) )
(check-sat)
