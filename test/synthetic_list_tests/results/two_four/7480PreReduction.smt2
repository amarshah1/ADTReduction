
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
(assert (= l1 Nil) )
(assert (= l1 l1) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)