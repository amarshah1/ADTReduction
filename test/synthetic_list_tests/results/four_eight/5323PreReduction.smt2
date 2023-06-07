
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
(assert (= l3 l2) )
(assert (or (= l2 l0) (= l3 Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (is-Nil l3) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(check-sat)
