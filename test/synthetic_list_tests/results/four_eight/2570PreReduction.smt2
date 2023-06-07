
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
(assert (is-Nil l0) )
(assert (or (= l0 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l2 l2) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (= l3 l3) (= l2 l0) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (not (= l0 Nil)) )
(check-sat)