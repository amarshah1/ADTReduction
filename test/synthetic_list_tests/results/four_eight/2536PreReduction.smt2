
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
(assert (or (is-Cons Nil) (= l0 l3)) )
(assert (= l1 Nil) )
(assert (or (is-Nil Nil) (= l1 l1) (= l0 l3)) )
(assert (or (= l3 l0) (= l1 l0) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (= l3 l3) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (or (= l3 l0) (= l3 Nil) (is-Nil Nil)) )
(check-sat)
