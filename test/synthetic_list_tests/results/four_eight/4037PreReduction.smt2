
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
(assert (or (= l1 l3) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l0 l0) (= l1 l0)) )
(assert (or (= l0 l1) (is-Cons l2) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons l3) (is-Nil l3)) )
(check-sat)
