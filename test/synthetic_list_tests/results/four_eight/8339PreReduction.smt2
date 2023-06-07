
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
(assert (or (= l0 Nil) (= l2 Nil) (is-Nil l2) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (or (= l2 l2) (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 l2) (is-Nil l0) (= l3 l2)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l2 l3) (= l0 Nil)) )
(check-sat)