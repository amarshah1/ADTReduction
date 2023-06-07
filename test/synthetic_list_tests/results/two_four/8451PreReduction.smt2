
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
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil l0) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
