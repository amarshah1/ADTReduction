
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
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 l1) (= l3 l1) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l0) (is-Cons l3) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l0 l0) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
