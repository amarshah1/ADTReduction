
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
(assert (= l3 Nil) )
(assert (is-Cons l2) )
(assert (and (is-Cons l1) (is-Cons l3) (= l3 l3)) )
(assert (and (is-Cons l1) (= l1 l2) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (is-Cons l0) )
(assert (or (= l2 l0) (= l2 l1)) )
(check-sat)
