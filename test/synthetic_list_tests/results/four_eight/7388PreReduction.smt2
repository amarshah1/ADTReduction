
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
(assert (or (= l3 Nil) (is-Nil l2) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l3 l2) (= l1 Nil) (= l1 l1)) )
(assert (and (= l0 l0) (= l2 l3) (= l3 Nil) (is-Nil Nil)) )
(assert (= l3 l2) )
(assert (or (= l3 Nil) (= l3 l1) (is-Cons Nil) (is-Cons l3)) )
(assert (is-Cons l1) )
(check-sat)