
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
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (is-Nil l0) )
(assert (and (= l1 l0) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Nil l0) (= l2 l0)) )
(assert (not (is-Cons Nil)) )
(check-sat)
