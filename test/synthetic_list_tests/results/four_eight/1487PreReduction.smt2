
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
(assert (and (= l3 l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l3)) )
(assert (or (is-Nil Nil) (is-Cons l0)) )
(assert (is-Cons l2) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil Nil)) )
(check-sat)
