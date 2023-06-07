
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
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (or (= l1 Nil) (= l2 Nil) (is-Nil Nil) (= l3 l0)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil) (= l2 l3)) )
(assert (not (is-Nil l0)) )
(assert (= l2 Nil) )
(assert (= l2 Nil) )
(check-sat)