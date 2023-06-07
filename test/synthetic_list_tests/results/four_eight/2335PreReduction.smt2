
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
(assert (and (is-Cons l0) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 l0) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)
