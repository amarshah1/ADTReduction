
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
(assert (is-Nil l1) )
(assert (is-Cons l0) )
(assert (or (= l1 l1) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 l3)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l0 Nil) (is-Nil l1)) )
(assert (and (is-Nil l0) (is-Cons Nil) (= l0 l2) (is-Nil l0)) )
(assert (not (is-Nil l3)) )
(assert (is-Cons Nil) )
(check-sat)
