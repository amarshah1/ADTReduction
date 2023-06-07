
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
(assert (and (= l3 Nil) (= l3 l1) (= l0 Nil)) )
(assert (not (= l3 l2)) )
(assert (or (is-Nil Nil) (= l0 l0) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l3) (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(check-sat)
