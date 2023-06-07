
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
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Nil l2) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (= l3 l0) )
(assert (not (is-Nil l2)) )
(assert (not (is-Cons Nil)) )
(check-sat)