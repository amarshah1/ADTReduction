
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
(assert (or (= l0 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l0 l1) (= l0 Nil)) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (is-Nil l2) )
(assert (= l2 Nil) )
(check-sat)
