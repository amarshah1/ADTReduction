
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
(assert (is-Nil l0) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil) (= l0 l0)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Nil l1) (= l3 Nil) (= l0 l3)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons l0) (= l1 Nil)) )
(check-sat)
