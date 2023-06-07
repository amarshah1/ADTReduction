
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
(assert (or (= l0 Nil) (= l1 Nil) (= l0 l3)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l1 l0) (is-Cons Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)