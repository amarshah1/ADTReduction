
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
(assert (or (is-Nil Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(assert (= l2 l0) )
(assert (and (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l3 Nil) (is-Nil l3) (= l1 l2) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (or (= l3 l0) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
