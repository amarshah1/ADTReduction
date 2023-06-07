
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
(assert (and (is-Cons Nil) (= l1 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 l3)) )
(assert (is-Nil l0) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(check-sat)
