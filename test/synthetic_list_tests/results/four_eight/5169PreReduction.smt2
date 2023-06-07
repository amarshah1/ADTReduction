
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
(assert (= l1 l3) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l1 l2) (= l3 l0) (= l1 Nil)) )
(assert (or (= l0 l1) (= l0 Nil) (is-Cons l3) (= l1 l2)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l3) (= l2 Nil)) )
(assert (= l2 l2) )
(assert (is-Cons l2) )
(check-sat)
