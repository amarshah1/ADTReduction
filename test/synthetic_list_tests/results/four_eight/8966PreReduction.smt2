
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
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons l0) (is-Cons l1)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l3 l0) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons l3) )
(assert (is-Nil l0) )
(assert (or (= l0 l1) (is-Nil Nil)) )
(check-sat)
