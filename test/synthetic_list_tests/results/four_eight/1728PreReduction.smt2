
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
(assert (and (= l2 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (is-Cons l3) (= l3 l0) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Nil l2) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons l0) (= l2 l0) (= l0 Nil)) )
(check-sat)
