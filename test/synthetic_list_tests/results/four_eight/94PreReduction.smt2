
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
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (= l1 l2) (= l3 l0) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil l1) )
(check-sat)