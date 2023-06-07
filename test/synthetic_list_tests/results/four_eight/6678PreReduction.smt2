
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
(assert (is-Cons l0) )
(assert (is-Cons l0) )
(assert (is-Cons l1) )
(assert (or (= l2 l0) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l1) (= l0 Nil)) )
(assert (= l3 Nil) )
(check-sat)