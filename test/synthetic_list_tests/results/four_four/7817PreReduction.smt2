
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
(assert (and (= l2 l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l3 l0) (is-Cons l2) (= l1 Nil) (is-Cons l0)) )
(assert (is-Nil l2) )
(assert (is-Nil l2) )
(check-sat)
