
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
(assert (or (is-Nil Nil) (= l0 l2) (is-Nil Nil)) )
(assert (and (is-Cons l0) (= l3 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons l2) )
(assert (or (= l2 Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (is-Nil l1) )
(check-sat)
