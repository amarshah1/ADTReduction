
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
(assert (or (is-Cons Nil) (is-Cons l2)) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l0) (is-Cons Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil l1) (is-Cons l2)) )
(check-sat)
