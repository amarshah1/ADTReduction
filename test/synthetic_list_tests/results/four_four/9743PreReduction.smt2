
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
(assert (is-Cons Nil) )
(assert (or (is-Cons l2) (= l3 Nil)) )
(assert (and (is-Nil l0) (= l3 l1) (is-Nil Nil) (= l1 l3)) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
