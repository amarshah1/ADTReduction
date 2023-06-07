
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
(assert (is-Nil l1) )
(assert (and (= l2 l1) (= l0 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l0 l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 l0) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l1) )
(check-sat)
