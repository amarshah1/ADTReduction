
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
(assert (not (is-Cons l2)) )
(assert (= l2 l3) )
(assert (is-Nil Nil) )
(assert (or (= l1 l1) (is-Nil l0) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
