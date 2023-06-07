
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
(assert (or (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 l3)) )
(assert (not (= l3 l2)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil l1) (= l0 Nil)) )
(check-sat)
