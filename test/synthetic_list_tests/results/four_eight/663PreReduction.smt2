
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
(assert (is-Nil l1) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Nil l0) (is-Cons l2)) )
(assert (and (= l0 l2) (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons l3)) )
(assert (is-Cons l2) )
(check-sat)
