
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
(assert (or (is-Nil Nil) (= l2 l3) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l2)) )
(assert (and (is-Cons l3) (is-Nil l0) (= l1 l2)) )
(assert (or (is-Nil l0) (is-Cons l2)) )
(assert (= l2 Nil) )
(assert (is-Nil l2) )
(assert (not (is-Nil Nil)) )
(check-sat)