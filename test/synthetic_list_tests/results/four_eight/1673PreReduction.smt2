
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
(assert (or (is-Cons l0) (= l3 l2)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons l2) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 l2)) )
(check-sat)
