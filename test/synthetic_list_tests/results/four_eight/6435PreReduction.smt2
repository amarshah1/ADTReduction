
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
(assert (= l0 Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (= l1 l0) (= l1 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l1) (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (= l3 l1) (= l3 l2) (= l3 l2) (= l3 l3)) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (= l0 l2) )
(check-sat)
