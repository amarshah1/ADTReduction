
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
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l3 l0) (is-Nil l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l3 l2)) )
(assert (= l0 l0) )
(assert (or (is-Nil l1) (= l3 Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)
