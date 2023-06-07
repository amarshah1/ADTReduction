
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
(assert (not (= l1 l0)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 l1) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)