
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
(assert (= l3 Nil) )
(assert (or (= l2 l2) (is-Nil Nil)) )
(assert (or (is-Nil l2) (= l2 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (or (= l0 l0) (= l1 Nil)) )
(check-sat)
