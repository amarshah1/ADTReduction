
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
(assert (or (= l3 l0) (= l1 Nil) (= l1 l2)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 l2) (is-Nil l0) (is-Nil l0)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(check-sat)
