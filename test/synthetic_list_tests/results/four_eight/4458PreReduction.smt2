
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
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil l3) (= l1 l0) (= l1 l1) (is-Nil Nil)) )
(assert (or (= l2 l0) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l3 l0) )
(assert (and (is-Cons l0) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
