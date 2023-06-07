
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
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l2) (= l2 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l2 l0) (= l0 l1)) )
(assert (= l0 l3) )
(check-sat)
