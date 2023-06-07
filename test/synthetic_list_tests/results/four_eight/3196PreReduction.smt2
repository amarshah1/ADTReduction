
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
(assert (or (= l3 l3) (is-Cons Nil) (= l0 l2) (= l3 l0)) )
(assert (and (is-Nil Nil) (is-Nil l0)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l1 l0) (= l1 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l3 l3)) )
(assert (is-Cons l0) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l3 l3) (is-Nil Nil)) )
(check-sat)
