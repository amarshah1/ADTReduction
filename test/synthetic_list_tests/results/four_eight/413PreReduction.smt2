
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
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l1 l3)) )
(assert (is-Nil l0) )
(assert (is-Cons l3) )
(assert (not (is-Nil l2)) )
(check-sat)
