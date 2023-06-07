
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
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 l3) (= l2 l1) (is-Cons l3) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (or (= l2 l2) (is-Nil Nil) (= l2 l0) (is-Cons Nil)) )
(assert (or (is-Cons l1) (= l2 l3)) )
(check-sat)
