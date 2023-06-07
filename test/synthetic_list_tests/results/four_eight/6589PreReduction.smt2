
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
(assert (is-Nil l2) )
(assert (is-Nil l3) )
(assert (or (= l0 l2) (is-Nil l3)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 l1) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l0 l2)) )
(check-sat)
