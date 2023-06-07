
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
(assert (and (= l0 l3) (= l3 l1) (is-Cons l2) (is-Nil Nil)) )
(assert (= l0 l0) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l1)) )
(assert (or (= l2 l1) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil Nil) (= l0 l3)) )
(check-sat)