
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
(assert (= l2 Nil) )
(assert (or (= l1 l1) (= l3 l0) (is-Cons l0) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
