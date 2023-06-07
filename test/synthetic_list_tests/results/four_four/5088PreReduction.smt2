
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
(assert (or (= l0 Nil) (= l3 l1) (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 l0) (= l1 Nil)) )
(assert (and (is-Nil l2) (= l3 Nil)) )
(assert (is-Cons l1) )
(check-sat)
