
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
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (is-Nil l2) )
(assert (is-Cons l0) )
(assert (not (is-Cons l2)) )
(assert (= l2 l2) )
(assert (or (= l2 l0) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
