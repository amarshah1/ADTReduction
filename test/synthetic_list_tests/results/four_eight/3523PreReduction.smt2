
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
(assert (is-Cons l2) )
(assert (or (= l1 l2) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Nil l1) (is-Nil l2) (is-Nil l2) (= l2 l3)) )
(assert (= l0 l0) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (= l0 l1) (= l2 Nil)) )
(assert (= l0 Nil) )
(check-sat)
