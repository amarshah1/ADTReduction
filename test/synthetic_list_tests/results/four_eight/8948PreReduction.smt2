
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
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Nil l0) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l0) )
(assert (not (= l3 l3)) )
(assert (is-Cons l1) )
(assert (not (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
