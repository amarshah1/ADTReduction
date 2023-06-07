
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
(assert (or (is-Nil l0) (is-Cons Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l2 l0) (= l3 Nil) (is-Nil Nil) (= l1 l2)) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (is-Cons l3) (= l2 Nil) (= l2 l0)) )
(assert (and (= l3 Nil) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)