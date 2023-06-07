
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
(assert (= l2 l0) )
(assert (= l1 l1) )
(assert (or (= l3 l1) (= l3 l1) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l1 l2) (is-Nil Nil)) )
(check-sat)
