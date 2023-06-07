
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
(assert (or (is-Nil l2) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (= l2 Nil) (is-Cons l0)) )
(assert (= l3 l0) )
(assert (or (= l0 l2) (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 l3) (= l1 Nil) (= l3 l3)) )
(check-sat)
