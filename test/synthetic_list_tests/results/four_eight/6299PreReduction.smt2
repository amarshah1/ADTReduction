
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
(assert (and (= l0 l0) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Cons l3) (= l3 l0) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l0) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l3 Nil) (= l1 l0) (= l3 Nil)) )
(check-sat)
