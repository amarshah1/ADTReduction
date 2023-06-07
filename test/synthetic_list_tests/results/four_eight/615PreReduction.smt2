
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
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (or (is-Nil Nil) (is-Nil l0) (is-Nil Nil) (= l0 l3)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons l3)) )
(assert (or (is-Cons Nil) (= l0 l2)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l1 l0) (is-Cons l1)) )
(check-sat)
