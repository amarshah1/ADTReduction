
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
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l3 l0) (= l2 l2) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
