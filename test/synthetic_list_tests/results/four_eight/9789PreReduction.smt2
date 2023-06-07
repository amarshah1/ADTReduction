
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
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l0 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons l0) (= l0 l1) (is-Cons l1)) )
(assert (= l0 l2) )
(assert (= l3 l2) )
(check-sat)