
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
(assert (not (= l3 Nil)) )
(assert (and (is-Nil l1) (= l3 Nil) (is-Cons l3)) )
(assert (and (is-Cons l3) (= l0 l0) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
