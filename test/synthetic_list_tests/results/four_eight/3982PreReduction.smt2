
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
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l2) (= l0 l2)) )
(assert (= l1 l1) )
(assert (not (= l2 Nil)) )
(check-sat)