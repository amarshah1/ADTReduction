
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
(assert (or (= l2 l0) (= l2 l2) (is-Cons l0)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l1 l0) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (and (= l0 l1) (= l3 l3) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
