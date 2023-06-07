
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
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (= l0 l1) )
(assert (is-Cons l2) )
(assert (= l1 l0) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l3 Nil)) )
(check-sat)
