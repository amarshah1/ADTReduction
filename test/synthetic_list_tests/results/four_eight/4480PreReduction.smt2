
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
(assert (or (is-Cons Nil) (is-Nil l1) (= l2 l1)) )
(assert (= l0 Nil) )
(assert (or (is-Cons l2) (= l0 l2) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (or (= l3 l0) (= l0 l3) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (= l1 l2) )
(assert (= l2 l0) )
(check-sat)
