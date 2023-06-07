
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
(assert (and (= l1 l0) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (= l1 Nil) )
(check-sat)
