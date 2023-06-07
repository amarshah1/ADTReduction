
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
(assert (not (= l2 Nil)) )
(assert (and (= l2 l3) (= l0 Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons l1) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (= l2 l2) )
(assert (is-Nil Nil) )
(check-sat)
