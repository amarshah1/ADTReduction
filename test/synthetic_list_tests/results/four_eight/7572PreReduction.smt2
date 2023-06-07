
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
(assert (or (is-Nil Nil) (is-Cons l0) (= l2 l1) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (is-Cons l1) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l3) (= l3 Nil)) )
(assert (or (= l1 l2) (= l0 l1)) )
(check-sat)
