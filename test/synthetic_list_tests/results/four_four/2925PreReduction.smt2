
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
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil l0) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
