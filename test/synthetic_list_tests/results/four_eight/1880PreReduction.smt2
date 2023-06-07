
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
(assert (or (= l3 l0) (is-Nil Nil) (= l0 l3)) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (= l2 Nil) (= l1 l0)) )
(assert (or (= l2 l3) (= l1 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
