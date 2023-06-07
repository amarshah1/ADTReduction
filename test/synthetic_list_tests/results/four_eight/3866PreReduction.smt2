
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
(assert (and (= l1 l3) (is-Nil l2) (= l2 Nil)) )
(assert (= l2 l0) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil l0) (is-Nil Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(check-sat)
