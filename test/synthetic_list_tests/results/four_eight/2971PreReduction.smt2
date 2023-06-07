
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
(assert (not (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (is-Nil l2) )
(assert (not (= l2 l0)) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Cons Nil) (= l3 l3)) )
(assert (not (is-Cons l0)) )
(check-sat)
