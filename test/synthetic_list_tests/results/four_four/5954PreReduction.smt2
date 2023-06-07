
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
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (is-Nil l2) (= l1 Nil)) )
(assert (and (is-Cons l0) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
