
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
(assert (and (= l0 Nil) (= l0 l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (= l1 l1) )
(assert (is-Cons Nil) )
(assert (or (= l2 l3) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons l0)) )
(check-sat)
