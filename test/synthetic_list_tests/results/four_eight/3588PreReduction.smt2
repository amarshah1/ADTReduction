
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
(assert (and (= l1 l0) (= l3 l1) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Cons l3)) )
(assert (or (= l3 Nil) (is-Cons l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Cons Nil) (is-Nil l0)) )
(check-sat)
