
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
(assert (and (= l0 Nil) (= l0 l3)) )
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(assert (or (= l3 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (is-Nil l2) (= l2 Nil)) )
(check-sat)
