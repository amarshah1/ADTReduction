
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
(assert (and (is-Cons Nil) (is-Nil l3)) )
(assert (or (is-Nil Nil) (is-Nil l2) (= l2 l0)) )
(assert (and (= l0 l0) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (= l2 Nil) )
(assert (= l3 l0) )
(assert (is-Nil l2) )
(assert (not (= l0 Nil)) )
(check-sat)
