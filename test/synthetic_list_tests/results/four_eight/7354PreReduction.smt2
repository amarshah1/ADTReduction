
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
(assert (= l3 l3) )
(assert (or (= l2 l0) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l2 l1)) )
(check-sat)
