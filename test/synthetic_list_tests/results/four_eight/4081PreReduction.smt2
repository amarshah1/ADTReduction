
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
(assert (is-Nil l2) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Cons l3)) )
(assert (= l1 l0) )
(assert (not (is-Nil Nil)) )
(assert (= l0 l2) )
(assert (or (= l3 l3) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
