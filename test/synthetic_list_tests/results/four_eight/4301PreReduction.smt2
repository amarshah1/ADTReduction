
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
(assert (is-Nil Nil) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons l1)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(check-sat)
