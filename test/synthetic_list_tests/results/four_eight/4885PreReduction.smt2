
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
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 l2) )
(assert (is-Nil l1) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l0) (= l3 l0) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
