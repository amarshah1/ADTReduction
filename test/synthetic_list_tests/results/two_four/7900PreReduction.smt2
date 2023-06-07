
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
(assert (or (is-Nil l0) (= l0 l1) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)