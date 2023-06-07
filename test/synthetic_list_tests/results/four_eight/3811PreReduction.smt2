
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
(assert (or (is-Cons l0) (is-Nil l3) (is-Cons Nil)) )
(assert (or (= l3 Nil) (is-Cons l2) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l0) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l3)) )
(assert (not (is-Nil l2)) )
(check-sat)
