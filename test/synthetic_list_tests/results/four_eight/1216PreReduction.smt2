
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
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l1 l0) (= l3 Nil) (is-Cons l2) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(check-sat)
