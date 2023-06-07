
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
(assert (is-Cons l1) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l2 l1) (= l1 Nil)) )
(assert (= l0 l2) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (= l0 l0) )
(assert (is-Nil Nil) )
(check-sat)
