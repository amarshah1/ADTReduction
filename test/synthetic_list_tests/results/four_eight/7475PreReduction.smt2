
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
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (is-Cons l0)) )
(assert (or (= l1 l3) (= l1 l3)) )
(assert (= l0 Nil) )
(assert (or (= l1 l0) (= l0 Nil) (= l1 l3) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l2 l0) (is-Nil l1)) )
(check-sat)
