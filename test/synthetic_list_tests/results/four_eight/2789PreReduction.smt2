
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
(assert (or (is-Cons Nil) (= l2 l1) (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l2) (= l2 l0)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l3 l1) (is-Nil Nil)) )
(assert (and (is-Nil l0) (is-Cons l1)) )
(assert (= l2 l2) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
