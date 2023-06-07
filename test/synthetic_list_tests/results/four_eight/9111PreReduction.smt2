
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
(assert (= l3 Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (is-Nil l1) )
(assert (and (= l3 l0) (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l3)) )
(assert (= l0 Nil) )
(check-sat)
