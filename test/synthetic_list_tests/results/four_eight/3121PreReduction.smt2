
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
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil l0) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil l2) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(check-sat)
