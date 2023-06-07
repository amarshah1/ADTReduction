
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
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 l0)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l3 l0) (is-Cons l1) (= l1 Nil) (is-Cons l0)) )
(assert (and (is-Cons l0) (= l0 Nil)) )
(check-sat)
