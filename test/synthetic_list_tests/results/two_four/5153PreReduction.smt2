
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
