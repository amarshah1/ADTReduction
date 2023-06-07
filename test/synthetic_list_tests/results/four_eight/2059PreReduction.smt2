
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
(assert (= l1 l3) )
(assert (or (is-Cons l3) (= l3 l0) (is-Cons l3)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l0 l2)) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(check-sat)
