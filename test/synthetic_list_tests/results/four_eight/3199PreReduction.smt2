
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
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l1) (= l0 l2) (= l2 l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l1 l1) )
(assert (or (is-Nil l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l2 l0) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
