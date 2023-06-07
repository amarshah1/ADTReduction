
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (or (= l1 l3) (= l0 l0) (= l1 l0)) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons l0) (= l0 l2)) )
(assert (and (= l2 l1) (= l3 Nil) (is-Cons l2) (= l1 l1)) )
(check-sat)
