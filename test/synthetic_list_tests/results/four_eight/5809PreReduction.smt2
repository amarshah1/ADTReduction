
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
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l3 l0) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons l2) )
(assert (= l1 l1) )
(check-sat)
