
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l1) (= l2 Nil) (= l0 l3)) )
(assert (is-Nil Nil) )
(check-sat)
