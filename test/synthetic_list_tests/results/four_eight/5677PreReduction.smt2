
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
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l0 l3)) )
(assert (and (= l0 l0) (is-Nil l1) (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Cons l0) (= l1 Nil)) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(check-sat)
