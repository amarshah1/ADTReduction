
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
(assert (or (is-Cons Nil) (= l1 Nil) (= l1 Nil) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(check-sat)