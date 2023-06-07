
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
(assert (is-Cons l3) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l1 l0) (is-Cons l0)) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l3 l2) (= l3 Nil)) )
(check-sat)
