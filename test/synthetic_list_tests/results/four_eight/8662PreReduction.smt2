
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
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (not (is-Nil Nil)) )
(check-sat)
