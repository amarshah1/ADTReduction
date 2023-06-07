
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
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons l3) (= l2 l3)) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l2 l1) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil l0) (= l3 l2)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
