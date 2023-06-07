
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
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l0 l1) (is-Nil Nil)) )
(assert (or (= l3 l2) (= l1 Nil)) )
(assert (= l1 l2) )
(check-sat)
