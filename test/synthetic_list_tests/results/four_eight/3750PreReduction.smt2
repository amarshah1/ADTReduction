
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
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Nil l3) )
(assert (= l0 l0) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(check-sat)
