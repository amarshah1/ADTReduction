
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
(assert (= l2 l0) )
(assert (and (is-Cons Nil) (= l0 l1) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil l3) (is-Nil Nil)) )
(check-sat)
