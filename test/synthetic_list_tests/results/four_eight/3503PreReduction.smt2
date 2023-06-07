
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
(assert (not (= l2 l3)) )
(assert (is-Nil l2) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l3 l0) (is-Cons Nil)) )
(assert (or (is-Cons l3) (= l0 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l1) )
(check-sat)
