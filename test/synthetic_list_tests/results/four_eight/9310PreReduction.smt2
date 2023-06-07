
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
(assert (or (= l1 l3) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
