
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
(assert (and (= l0 Nil) (= l0 Nil) (= l1 Nil) (= l0 l0)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l1) (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
