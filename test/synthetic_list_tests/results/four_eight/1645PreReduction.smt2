
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
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l2 l0) (is-Cons l3) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Cons l3)) )
(check-sat)