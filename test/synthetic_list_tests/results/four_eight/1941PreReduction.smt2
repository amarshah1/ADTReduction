
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
(assert (and (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l0) )
(assert (or (= l2 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(check-sat)
