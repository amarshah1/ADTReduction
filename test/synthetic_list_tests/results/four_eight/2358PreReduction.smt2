
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
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l0 l1) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (= l3 l1) (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(check-sat)
