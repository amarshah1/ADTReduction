
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
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (or (is-Nil l1) (is-Cons l0) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (and (= l2 Nil) (= l2 Nil) (= l2 l0) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l2) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
