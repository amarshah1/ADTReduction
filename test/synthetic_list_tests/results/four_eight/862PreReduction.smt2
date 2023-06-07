
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
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (or (= l3 l1) (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
