
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
(assert (is-Cons l0) )
(assert (and (is-Nil l0) (= l2 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l1 l0) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
