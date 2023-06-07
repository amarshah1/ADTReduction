
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
(assert (or (= l3 Nil) (= l1 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l3 l1) )
(assert (not (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l1) (= l2 l2) (= l0 l2) (= l2 Nil)) )
(check-sat)
