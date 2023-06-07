
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
(assert (or (= l0 l2) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l1 l0) (is-Cons l3)) )
(assert (is-Cons l0) )
(assert (= l2 Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
