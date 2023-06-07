
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
(assert (is-Cons l2) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (or (is-Cons l3) (is-Cons Nil) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
