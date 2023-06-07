
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
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
