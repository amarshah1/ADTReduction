
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
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l0) (= l3 l2) (= l3 l3)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
