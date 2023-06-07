
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
(assert (= l0 l2) )
(assert (is-Nil l1) )
(assert (or (= l2 Nil) (= l0 Nil) (= l3 l0) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l2 l1) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (and (= l1 l1) (is-Cons l1) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l1 l2)) )
(check-sat)
