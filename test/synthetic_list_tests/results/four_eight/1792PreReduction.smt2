
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
(assert (is-Cons l3) )
(assert (or (= l2 Nil) (= l3 l1) (is-Nil Nil) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (is-Nil l0) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(check-sat)
