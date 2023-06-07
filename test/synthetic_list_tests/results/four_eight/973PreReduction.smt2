
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
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(check-sat)
