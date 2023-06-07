
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
(assert (or (= l3 Nil) (= l3 l0) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (= l3 l2) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(check-sat)
