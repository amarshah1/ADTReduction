
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
(assert (and (= l2 l0) (= l0 l3)) )
(assert (or (= l0 l3) (is-Cons l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
