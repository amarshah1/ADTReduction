
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
(assert (is-Nil l3) )
(assert (or (= l1 l1) (= l2 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(check-sat)