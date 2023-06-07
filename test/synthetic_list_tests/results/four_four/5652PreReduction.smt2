
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
(assert (= l0 l2) )
(assert (and (= l2 Nil) (= l2 Nil) (is-Nil l3)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
