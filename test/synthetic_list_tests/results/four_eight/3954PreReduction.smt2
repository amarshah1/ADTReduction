
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
(assert (or (= l0 l2) (is-Nil l0)) )
(assert (not (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (and (= l1 l1) (= l2 l2)) )
(check-sat)
