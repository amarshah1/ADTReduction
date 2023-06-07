
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
(assert (and (is-Cons Nil) (= l2 l2) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (or (= l1 l2) (= l2 l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l0 l1) (= l1 l0) (is-Cons Nil)) )
(check-sat)
