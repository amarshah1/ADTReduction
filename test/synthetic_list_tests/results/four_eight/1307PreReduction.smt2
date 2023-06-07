
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
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 l1) (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l0) (= l0 Nil) (is-Cons l0)) )
(assert (= l2 l0) )
(assert (= l2 Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
