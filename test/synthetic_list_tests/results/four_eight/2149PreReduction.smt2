
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
(assert (is-Cons l2) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (or (is-Nil l2) (= l1 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 l1) (= l3 Nil)) )
(assert (is-Nil l0) )
(check-sat)
