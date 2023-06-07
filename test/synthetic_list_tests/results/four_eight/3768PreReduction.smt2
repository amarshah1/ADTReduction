
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
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l3 l2) (= l3 l0) (is-Nil l2)) )
(assert (not (= l3 l0)) )
(assert (= l1 Nil) )
(assert (is-Cons l0) )
(assert (not (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
