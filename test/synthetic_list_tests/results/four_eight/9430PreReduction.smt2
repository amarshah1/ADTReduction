
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
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l3) (is-Nil l2) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l2 l1) (is-Cons Nil) (= l0 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (is-Nil Nil) (= l0 Nil) (is-Cons l2)) )
(check-sat)
