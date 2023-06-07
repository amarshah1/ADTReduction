
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
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 l0) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l3 l2)) )
(assert (is-Nil l0) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
