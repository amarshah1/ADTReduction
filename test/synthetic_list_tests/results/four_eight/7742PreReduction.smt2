
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
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l1) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l3) (= l0 Nil) (= l0 l2)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
