
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
(assert (not (is-Nil l2)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
