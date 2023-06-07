
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
(assert (is-Cons Nil) )
(assert (= l2 l0) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (= l0 l2)) )
(assert (and (= l0 l0) (= l0 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (is-Cons l1)) )
(assert (and (is-Nil l0) (= l2 Nil)) )
(check-sat)
