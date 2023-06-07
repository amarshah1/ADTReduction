
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
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (and (= l1 Nil) (= l0 l0) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (or (= l0 l0) (is-Cons l1) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l3 l0) (= l3 Nil)) )
(check-sat)
