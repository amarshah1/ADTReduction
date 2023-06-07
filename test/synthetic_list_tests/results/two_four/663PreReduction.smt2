
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
(assert (or (= l0 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l1) (= l0 Nil) (= l1 l0)) )
(assert (not (is-Cons Nil)) )
(check-sat)