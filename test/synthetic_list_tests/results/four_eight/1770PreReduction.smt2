
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
(assert (or (= l0 l2) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons l3) (= l3 l3)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l0) (is-Cons l0) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(check-sat)
