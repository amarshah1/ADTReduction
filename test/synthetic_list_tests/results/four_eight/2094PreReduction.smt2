
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
(assert (or (= l0 Nil) (is-Cons l0) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l1 l1) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (and (is-Nil l2) (is-Cons l0) (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l2 l2) (= l2 Nil)) )
(check-sat)
