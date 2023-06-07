
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
(assert (or (= l3 Nil) (= l1 l0) (= l2 l2)) )
(assert (not (= l1 l3)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Nil l1) (= l0 Nil)) )
(assert (or (is-Nil l2) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 l1)) )
(assert (is-Nil Nil) )
(check-sat)
