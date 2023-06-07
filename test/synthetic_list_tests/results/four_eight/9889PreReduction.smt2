
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
(assert (not (= l1 l0)) )
(assert (not (= l2 l3)) )
(assert (= l3 l2) )
(assert (is-Nil l0) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (= l0 l1)) )
(assert (not (= l2 Nil)) )
(assert (and (is-Cons l0) (= l3 l3) (is-Nil Nil)) )
(assert (or (= l0 l1) (= l2 Nil)) )
(check-sat)