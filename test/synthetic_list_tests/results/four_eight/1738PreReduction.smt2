
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
(assert (or (is-Nil l0) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l1 l1) (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(check-sat)
