
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
(assert (and (= l0 l0) (is-Nil l2) (is-Nil l1)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
