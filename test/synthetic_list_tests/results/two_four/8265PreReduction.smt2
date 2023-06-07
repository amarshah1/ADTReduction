
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
(assert (or (= l0 l0) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(assert (or (= l1 Nil) (is-Nil l1) (= l1 Nil)) )
(check-sat)