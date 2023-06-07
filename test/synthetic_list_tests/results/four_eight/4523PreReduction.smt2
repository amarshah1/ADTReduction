
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
(assert (= l3 l3) )
(assert (= l1 l2) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l1 l0) (is-Cons Nil)) )
(assert (= l2 l0) )
(assert (is-Nil Nil) )
(check-sat)
