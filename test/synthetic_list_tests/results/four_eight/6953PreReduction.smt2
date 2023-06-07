
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
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l2 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l1 l0) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(check-sat)
