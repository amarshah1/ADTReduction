
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
(assert (or (= l1 l1) (= l3 l1) (= l0 l0) (= l2 l1)) )
(assert (or (is-Cons l2) (is-Cons Nil) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil l0) (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
