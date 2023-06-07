
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
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l3) (= l2 l2)) )
(assert (is-Cons Nil) )
(check-sat)
